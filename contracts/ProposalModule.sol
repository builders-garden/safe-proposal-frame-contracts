// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./utils/Enum.sol";
import "./utils/SignatureDecoder.sol";
import "./MessaggeVerifier.sol";


// Uncomment this line to use console.log
// import "hardhat/console.sol";

interface GnosisSafe {
    /// @dev Allows a Module to execute a Safe transaction without any further confirmations.
    /// @param to Destination address of module transaction.
    /// @param value Ether value of module transaction.
    /// @param data Data payload of module transaction.
    /// @param operation Operation type of module transaction.
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes calldata data,
        Enum.Operation operation
    ) external returns (bool success);
}

contract ProposalModule is MessaggeVerifier {

    event ProposalCreated(uint256 proposalId, address token, uint256 amount, address to, uint256 threshold);

    struct Proposal {
        address token;
        uint256 amount;
        address to;
        uint256 threshold;
        uint256 acceptVotes;
        uint256 rejectVotes;
        bool terminated;
        uint256 minFid;
    }

    address public owner;
    address public safe;
    bool public initialized;
 
    uint256 public minFid = 10000;

    mapping (uint256 => Proposal) public proposals;
    mapping (bytes32 => mapping(uint256 => bool)) public voted;

    constructor(address _owner, address _safe) {
        _init(_owner, _safe);
        
    }

    function init(address _owner, address _safe) public {
        _init(_owner, _safe);
    }

    function _init(address _owner, address _safe) internal {
        require(!initialized, "already initialized");
        owner = _owner;
        safe = _safe;
        initialized = true;
    }

    function createProposal(address token, uint256 amount, address to, uint256 threshold) public {
        require(msg.sender == owner, "only owner can create proposal");
        uint256 proposalId = uint256(keccak256(abi.encodePacked(token, amount, threshold, block.timestamp)));
        proposals[proposalId] = Proposal(token, amount, to, threshold, 0, 0, false, minFid);
        emit ProposalCreated(proposalId, token, amount, to, threshold);
    }

    function executeProposal (uint256 proposalId) public {
        Proposal memory proposal = proposals[proposalId];
        if (proposal.acceptVotes >= proposal.threshold) {
            bytes memory data = abi.encodeWithSignature("transfer(address,uint256)", proposal.to, proposal.amount);
            require(GnosisSafe(safe).execTransactionFromModule(proposal.token, 0, data, Enum.Operation.Call), "Could not execute token transfer");
            proposal.terminated = true;
        } else if (proposal.rejectVotes >= proposal.threshold) {
            proposal.terminated = true;
        }
    }

    function verifyFrameActionBodyMessage(
    bytes32 public_key,
    bytes32 signature_r,
    bytes32 signature_s,
    bytes memory message,
    uint256 proposalId
  ) external {
    MessageData memory message_data = _verifyMessage(
      public_key,
      signature_r,
      signature_s,
      message
    );

    if (message_data.type_ != MessageType.MESSAGE_TYPE_FRAME_ACTION) {
      revert InvalidMessageType();
    }
    require (!proposals[proposalId].terminated, "proposal already terminated");

    require(message_data.frame_action_body.cast_id.fid <= proposals[proposalId].minFid, "fid must be less than the proposal minFid");

    // if the users clicks the first button, we accept the proposal, otherwise we reject it
    if (message_data.frame_action_body.button_index == 1) {
      _vote(proposalId, public_key, true);
    } else {
      _vote(proposalId, public_key, false);
    }

    emit MessageFrameActionBodyVerified(
      message_data.fid,
      message_data.frame_action_body.button_index,
      message_data.frame_action_body.cast_id.fid,
      message_data.frame_action_body.cast_id.hash_,
      message_data.frame_action_body.url
    );
  }

    function _vote(uint256 proposalId, bytes32 user, bool accept) internal {
        require(!voted[user][proposalId], "already voted");
        //terminate
        Proposal storage proposal = proposals[proposalId];
        voted[user][proposalId] = true;
        if (accept) {
            proposal.acceptVotes++;
        } else {
            proposal.rejectVotes++;
        }
    }
}
