# Safe Proposal Frame
A Safe Module that allows an owner address to create one or more Proposals for transferring a specified amount of tokens. A Proposal can be only voted by Farcaster users with a FID =< 20000. The backend takes the signed user Farcaster message and calls the verifyFrameActionBodyMessage method to validate the message and store the vote (button index 1 is "yes", button index 2 is "no"). The proposal execution can be triggered by anyone if the number of accepting votes or rejecting votes reaches the threshold value set by the owner.

This is the first experiment of an on-chain proposal voted and executed on the Farcaster social layer.

# Farcaster solidity - pavlovdog repository 

Big thanks to pavlovdog. His repository farcaster-solidity (https://github.com/pavlovdog/farcaster-solidity) has been used for verifying and parsing Farcaster messages on-chain. The repo offers countless opportunities.

# Create a Proposal
The owner address can create a Proposal passing the following params:
- address token
- uint256 amount
- address to
- uint256 threshold

# Vote a Proposal
Anyone can call the verifyFrameActionBodyMessage method by passing the following params to vote:
- bytes32 public_key,
- bytes32 signature_r,
- bytes32 signature_s,
- bytes memory message,
- uint256 proposalId

The message, signature and public key are retrieved by the message sent through the Frame interaction by the user interacting with the Frame

# Execute a Proposal
Anyone can call the executeProposal method by passing the following params to execute a Proposal when the number of acceptVotes or rejectVotes reaches the threshold value:
- uint256 proposalId
