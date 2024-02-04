// Sources flattened with hardhat v2.19.2 https://hardhat.org

// SPDX-License-Identifier: Apache-2.0 AND CC0 AND GPL-3.0 AND LGPL-3.0-only AND UNLICENSED

pragma experimental ABIEncoderV2;

// File contracts/libraries/Ed25519_pow.sol

// Original license: SPDX_License_Identifier: Apache-2.0
pragma solidity ^0.8.9;


library Ed25519_pow {
      // Computes (v^(2^250-1), v^11) mod p
    function pow22501(uint256 v) external pure returns (uint256 p22501, uint256 p11) {
        p11 = mulmod(v, v, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        p22501 = mulmod(p11, p11, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        p22501 = mulmod(
            mulmod(p22501, p22501, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
            v,
            0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
        );
        p11 = mulmod(p22501, p11, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        p22501 = mulmod(
            mulmod(p11, p11, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
            p22501,
            0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
        );
        uint256 a = mulmod(p22501, p22501, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        p22501 = mulmod(p22501, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(p22501, p22501, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(p22501, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        uint256 b = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        p22501 = mulmod(p22501, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(p22501, p22501, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(p22501, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        b = mulmod(b, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, b, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        a = mulmod(a, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
        p22501 = mulmod(p22501, a, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
    }
}


// File contracts/libraries/Sha512.sol

// Original license: SPDX_License_Identifier: Apache-2.0
pragma solidity ^0.8.9;

// Reference: https://csrc.nist.gov/csrc/media/publications/fips/180/2/archive/2002-08-01/documents/fips180-2.pdf

library Sha512 {
    // @notice: The message, M, shall be padded before hash computation begins.
    //          The purpose of this padding is to ensure that the padded message is a multiple of 1024 bits.
    // @param message input raw message bytes
    // @return padded message bytes
    function preprocess(bytes memory message)
        internal
        pure
        returns (bytes memory)
    {
        uint256 padding = 128 - (message.length % 128);
        if (message.length % 128 >= 112) {
            padding = 256 - (message.length % 128);
        }
        bytes memory result = new bytes(message.length + padding);

        for (uint256 i = 0; i < message.length; i++) {
            result[i] = message[i];
        }
        result[message.length] = 0x80;

        uint128 bitSize = uint128(message.length * 8);
        bytes memory bitlength = abi.encodePacked(bitSize);
        for (uint256 index = 0; index < bitlength.length; index++) {
            result[result.length - 1 - index] = bitlength[
                bitlength.length - 1 - index
            ];
        }
        return result;
    }

    function bytesToBytes8(bytes memory b, uint256 offset)
        internal
        pure
        returns (bytes8)
    {
        bytes8 out;
        for (uint256 i = 0; i < 8; i++) {
            out |= bytes8(b[offset + i] & 0xFF) >> (i * 8);
        }
        return out;
    }

    function cutBlock(bytes memory data, uint256 blockIndex)
        internal
        pure
        returns (uint64[16] memory)
    {
        uint64[16] memory result;
        for (uint8 r = 0; r < result.length; r++) {
            result[r] = uint64(bytesToBytes8(data, blockIndex * 128 + r * 8));
        }
        return result;
    }

    // This section defines the functions that are used by sha-512.
    // https://csrc.nist.gov/csrc/media/publications/fips/180/2/archive/2002-08-01/documents/fips180-2.pdf#page=15

    // @notice: Thus, ROTR(x, n) is equivalent to a circular shift (rotation) of x by n positions to the right.
    // @param x input num
    // @param n num of positions to circular shift
    // @return uint64
    function ROTR(uint64 x, uint256 n) internal pure returns (uint64) {
        return (x << (64 - n)) + (x >> n);
    }

    // @notice: The right shift operation SHR n(x), where x is a w-bit word and n is an integer with 0 <= n < w, is defined by SHR(x, n) = x >> n.
    // @param x input num
    // @param n num of positions to shift
    // @return uint64
    function SHR(uint64 x, uint256 n) internal pure returns (uint64) {
        return uint64(x >> n);
    }

    // @notice: Ch(x, y, z) = (x ^ y) ⊕ (﹁ x ^ z)
    // @param x x
    // @param y y
    // @param z z
    // @return uint64
    function Ch(
        uint64 x,
        uint64 y,
        uint64 z
    ) internal pure returns (uint64) {
        return (x & y) ^ ((x ^ 0xffffffffffffffff) & z);
    }

    // @notice: Maj(x, y, z) = (x ^ y) ⊕ (x ^ z) ⊕ (y ^ z)
    // @param x x
    // @param y y
    // @param z z
    // @return uint64
    function Maj(
        uint64 x,
        uint64 y,
        uint64 z
    ) internal pure returns (uint64) {
        return (x & y) ^ (x & z) ^ (y & z);
    }

    // @notice: sigma0(x) = ROTR(x, 28) ^ ROTR(x, 34) ^ ROTR(x, 39)
    // @param x x
    // @return uint64
    function sigma0(uint64 x) internal pure returns (uint64) {
        return ROTR(x, 28) ^ ROTR(x, 34) ^ ROTR(x, 39);
    }

    // @notice: sigma1(x) = ROTR(x, 14) ^ ROTR(x, 18) ^ ROTR(x, 41)
    // @param x x
    // @return uint64
    function sigma1(uint64 x) internal pure returns (uint64) {
        return ROTR(x, 14) ^ ROTR(x, 18) ^ ROTR(x, 41);
    }

    // @notice: gamma0(x) = OTR(x, 1) ^ ROTR(x, 8) ^ SHR(x, 7)
    // @param x x
    // @return uint64
    function gamma0(uint64 x) internal pure returns (uint64) {
        return ROTR(x, 1) ^ ROTR(x, 8) ^ SHR(x, 7);
    }

    // @notice: gamma1(x) = ROTR(x, 19) ^ ROTR(x, 61) ^ SHR(x, 6)
    // @param x x
    // @return uint64
    function gamma1(uint64 x) internal pure returns (uint64) {
        return ROTR(x, 19) ^ ROTR(x, 61) ^ SHR(x, 6);
    }

    struct FuncVar {
        uint64 a;
        uint64 b;
        uint64 c;
        uint64 d;
        uint64 e;
        uint64 f;
        uint64 g;
        uint64 h;
    }

    // @notice Calculate the SHA512 of input data.
    // @param data input data bytes
    // @return 512 bits hash result
    function hash(bytes memory data) external pure returns (uint64[8] memory) {
        uint64[8] memory H = [
            0x6a09e667f3bcc908,
            0xbb67ae8584caa73b,
            0x3c6ef372fe94f82b,
            0xa54ff53a5f1d36f1,
            0x510e527fade682d1,
            0x9b05688c2b3e6c1f,
            0x1f83d9abfb41bd6b,
            0x5be0cd19137e2179
        ];

        unchecked {
            uint64 T1;
            uint64 T2;

            uint64[80] memory W;
            FuncVar memory fvar;

            uint64[80] memory K = [
                0x428a2f98d728ae22,
                0x7137449123ef65cd,
                0xb5c0fbcfec4d3b2f,
                0xe9b5dba58189dbbc,
                0x3956c25bf348b538,
                0x59f111f1b605d019,
                0x923f82a4af194f9b,
                0xab1c5ed5da6d8118,
                0xd807aa98a3030242,
                0x12835b0145706fbe,
                0x243185be4ee4b28c,
                0x550c7dc3d5ffb4e2,
                0x72be5d74f27b896f,
                0x80deb1fe3b1696b1,
                0x9bdc06a725c71235,
                0xc19bf174cf692694,
                0xe49b69c19ef14ad2,
                0xefbe4786384f25e3,
                0x0fc19dc68b8cd5b5,
                0x240ca1cc77ac9c65,
                0x2de92c6f592b0275,
                0x4a7484aa6ea6e483,
                0x5cb0a9dcbd41fbd4,
                0x76f988da831153b5,
                0x983e5152ee66dfab,
                0xa831c66d2db43210,
                0xb00327c898fb213f,
                0xbf597fc7beef0ee4,
                0xc6e00bf33da88fc2,
                0xd5a79147930aa725,
                0x06ca6351e003826f,
                0x142929670a0e6e70,
                0x27b70a8546d22ffc,
                0x2e1b21385c26c926,
                0x4d2c6dfc5ac42aed,
                0x53380d139d95b3df,
                0x650a73548baf63de,
                0x766a0abb3c77b2a8,
                0x81c2c92e47edaee6,
                0x92722c851482353b,
                0xa2bfe8a14cf10364,
                0xa81a664bbc423001,
                0xc24b8b70d0f89791,
                0xc76c51a30654be30,
                0xd192e819d6ef5218,
                0xd69906245565a910,
                0xf40e35855771202a,
                0x106aa07032bbd1b8,
                0x19a4c116b8d2d0c8,
                0x1e376c085141ab53,
                0x2748774cdf8eeb99,
                0x34b0bcb5e19b48a8,
                0x391c0cb3c5c95a63,
                0x4ed8aa4ae3418acb,
                0x5b9cca4f7763e373,
                0x682e6ff3d6b2b8a3,
                0x748f82ee5defb2fc,
                0x78a5636f43172f60,
                0x84c87814a1f0ab72,
                0x8cc702081a6439ec,
                0x90befffa23631e28,
                0xa4506cebde82bde9,
                0xbef9a3f7b2c67915,
                0xc67178f2e372532b,
                0xca273eceea26619c,
                0xd186b8c721c0c207,
                0xeada7dd6cde0eb1e,
                0xf57d4f7fee6ed178,
                0x06f067aa72176fba,
                0x0a637dc5a2c898a6,
                0x113f9804bef90dae,
                0x1b710b35131c471b,
                0x28db77f523047d84,
                0x32caab7b40c72493,
                0x3c9ebe0a15c9bebc,
                0x431d67c49c100d4c,
                0x4cc5d4becb3e42b6,
                0x597f299cfc657e2a,
                0x5fcb6fab3ad6faec,
                0x6c44198c4a475817
            ];

            bytes memory blocks = preprocess(data);

            for (uint256 j = 0; j < blocks.length / 128; j++) {
                uint64[16] memory M = cutBlock(blocks, j);

                fvar.a = H[0];
                fvar.b = H[1];
                fvar.c = H[2];
                fvar.d = H[3];
                fvar.e = H[4];
                fvar.f = H[5];
                fvar.g = H[6];
                fvar.h = H[7];

                for (uint256 i = 0; i < 80; i++) {
                    if (i < 16) {
                        W[i] = M[i];
                    } else {
                        W[i] =
                            gamma1(W[i - 2]) +
                            W[i - 7] +
                            gamma0(W[i - 15]) +
                            W[i - 16];
                    }

                    T1 =
                        fvar.h +
                        sigma1(fvar.e) +
                        Ch(fvar.e, fvar.f, fvar.g) +
                        K[i] +
                        W[i];
                    T2 = sigma0(fvar.a) + Maj(fvar.a, fvar.b, fvar.c);

                    fvar.h = fvar.g;
                    fvar.g = fvar.f;
                    fvar.f = fvar.e;
                    fvar.e = fvar.d + T1;
                    fvar.d = fvar.c;
                    fvar.c = fvar.b;
                    fvar.b = fvar.a;
                    fvar.a = T1 + T2;
                }

                H[0] = H[0] + fvar.a;
                H[1] = H[1] + fvar.b;
                H[2] = H[2] + fvar.c;
                H[3] = H[3] + fvar.d;
                H[4] = H[4] + fvar.e;
                H[5] = H[5] + fvar.f;
                H[6] = H[6] + fvar.g;
                H[7] = H[7] + fvar.h;
            }           
        }

        return H;
    }
}


// File contracts/libraries/Ed25519.sol

// Original license: SPDX_License_Identifier: Apache-2.0
pragma solidity ^0.8.9;


library Ed25519 {
    function verify(
        bytes32 k,
        bytes32 r,
        bytes32 s,
        bytes memory m
    ) external pure returns (bool) {
        unchecked {
            uint256 hh;
            // Step 1: compute SHA-512(R, A, M)
            {
                bytes memory rs = new bytes(k.length + r.length + m.length);
                for (uint256 i = 0; i < r.length; i++) {
                    rs[i] = r[i];
                }
                for (uint256 i = 0; i < k.length; i++) {
                    rs[i + 32] = k[i];
                }
                    for (uint256 i = 0; i < m.length; i++) {
                    rs[i + 64] = m[i];
                }
                uint64[8] memory result = Sha512.hash(rs);

                uint256 h0 = uint256(result[0]) | uint256(result[1]) << 64 | uint256(result[2]) << 128 | uint256(result[3]) << 192;

                h0 =
                    ((h0 & 0xff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff) << 8) |
                    ((h0 & 0xff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00) >> 8);
                h0 =
                    ((h0 & 0xffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff) << 16) |
                    ((h0 & 0xffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000) >> 16);
                h0 =
                    ((h0 & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff) << 32) |
                    ((h0 & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff_00000000) >> 32);

                uint256 h1 = uint256(result[4]) | uint256(result[5]) << 64 | uint256(result[6]) << 128 | uint256(result[7]) << 192;

                h1 =
                    ((h1 & 0xff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff) << 8) |
                    ((h1 & 0xff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00) >> 8);
                h1 =
                    ((h1 & 0xffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff) << 16) |
                    ((h1 & 0xffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000) >> 16);
                h1 =
                    ((h1 & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff) << 32) |
                    ((h1 & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff_00000000) >> 32);
                hh = addmod(
                    h0,
                    mulmod(
                        h1,
                        0xfffffff_ffffffff_ffffffff_fffffffe_c6ef5bf4_737dcf70_d6ec3174_8d98951d,
                        0x10000000_00000000_00000000_00000000_14def9de_a2f79cd6_5812631a_5cf5d3ed
                    ),
                    0x10000000_00000000_00000000_00000000_14def9de_a2f79cd6_5812631a_5cf5d3ed
                );
            }
            // Step 2: unpack k
            k = bytes32(
                ((uint256(k) & 0xff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff) << 8) |
                    ((uint256(k) & 0xff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00) >> 8)
            );
            k = bytes32(
                ((uint256(k) & 0xffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff) << 16) |
                    ((uint256(k) & 0xffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000) >> 16)
            );
            k = bytes32(
                ((uint256(k) & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff) << 32) |
                    ((uint256(k) & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff_00000000) >> 32)
            );
            k = bytes32(
                ((uint256(k) & 0xffffffff_ffffffff_00000000_00000000_ffffffff_ffffffff) << 64) |
                    ((uint256(k) & 0xffffffff_ffffffff_00000000_00000000_ffffffff_ffffffff_00000000_00000000) >> 64)
            );
            k = bytes32((uint256(k) << 128) | (uint256(k) >> 128));
            uint256 ky = uint256(k) & 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff;
            uint256 kx;
            {
                uint256 ky2 = mulmod(ky, ky, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                uint256 u =
                    addmod(
                        ky2,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffec,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                uint256 v =
                    mulmod(
                        ky2,
                        0x52036cee_2b6ffe73_8cc74079_7779e898_00700a4d_4141d8ab_75eb4dca_135978a3,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    ) + 1;
                uint256 t = mulmod(u, v, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                (kx, ) = Ed25519_pow.pow22501(t);
                kx = mulmod(kx, kx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                kx = mulmod(
                    u,
                    mulmod(
                        mulmod(kx, kx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
                        t,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    ),
                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                );
                t = mulmod(
                    mulmod(kx, kx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
                    v,
                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                );
                if (t != u) {
                    if (t != 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed - u) {
                        return false;
                    }
                    kx = mulmod(
                        kx,
                        0x2b832480_4fc1df0b_2b4d0099_3dfbd7a7_2f431806_ad2fe478_c4ee1b27_4a0ea0b0,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                }
            }
            if ((kx & 1) != uint256(k) >> 255) {
                kx = 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed - kx;
            }
            // Verify s
            s = bytes32(
                ((uint256(s) & 0xff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff) << 8) |
                    ((uint256(s) & 0xff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00) >> 8)
            );
            s = bytes32(
                ((uint256(s) & 0xffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff) << 16) |
                    ((uint256(s) & 0xffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000) >> 16)
            );
            s = bytes32(
                ((uint256(s) & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff) << 32) |
                    ((uint256(s) & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff_00000000) >> 32)
            );
            s = bytes32(
                ((uint256(s) & 0xffffffff_ffffffff_00000000_00000000_ffffffff_ffffffff) << 64) |
                    ((uint256(s) & 0xffffffff_ffffffff_00000000_00000000_ffffffff_ffffffff_00000000_00000000) >> 64)
            );
            s = bytes32((uint256(s) << 128) | (uint256(s) >> 128));
            if (uint256(s) >= 0x10000000_00000000_00000000_00000000_14def9de_a2f79cd6_5812631a_5cf5d3ed) {
                return false;
            }
            uint256 vx;
            uint256 vu;
            uint256 vy;
            uint256 vv;
            // Step 3: compute multiples of k
            uint256[8][3][2] memory tables;
            {
                uint256 ks = ky + kx;
                uint256 kd = ky + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed - kx;
                uint256 k2dt =
                    mulmod(
                        mulmod(kx, ky, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
                        0x2406d9dc_56dffce7_198e80f2_eef3d130_00e0149a_8283b156_ebd69b94_26b2f159,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                uint256 kky = ky;
                uint256 kkx = kx;
                uint256 kku = 1;
                uint256 kkv = 1;
                {
                    uint256 xx =
                        mulmod(kkx, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 yy =
                        mulmod(kky, kku, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 zz =
                        mulmod(kku, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 xx2 =
                        mulmod(xx, xx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 yy2 =
                        mulmod(yy, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 xxyy =
                        mulmod(xx, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 zz2 =
                        mulmod(zz, zz, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    kkx = xxyy + xxyy;
                    kku = yy2 - xx2 + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                    kky = xx2 + yy2;
                    kkv = addmod(
                        zz2 + zz2,
                        0xffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffda - kku,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                }
                {
                    uint256 xx =
                        mulmod(kkx, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 yy =
                        mulmod(kky, kku, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 zz =
                        mulmod(kku, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 xx2 =
                        mulmod(xx, xx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 yy2 =
                        mulmod(yy, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 xxyy =
                        mulmod(xx, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 zz2 =
                        mulmod(zz, zz, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    kkx = xxyy + xxyy;
                    kku = yy2 - xx2 + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                    kky = xx2 + yy2;
                    kkv = addmod(
                        zz2 + zz2,
                        0xffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffda - kku,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                }
                {
                    uint256 xx =
                        mulmod(kkx, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 yy =
                        mulmod(kky, kku, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 zz =
                        mulmod(kku, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 xx2 =
                        mulmod(xx, xx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 yy2 =
                        mulmod(yy, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 xxyy =
                        mulmod(xx, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 zz2 =
                        mulmod(zz, zz, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    kkx = xxyy + xxyy;
                    kku = yy2 - xx2 + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                    kky = xx2 + yy2;
                    kkv = addmod(
                        zz2 + zz2,
                        0xffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffda - kku,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                }
                uint256 cprod = 1;
                uint256[8][3][2] memory tables_ = tables;
                for (uint256 i = 0; ; i++) {
                    uint256 cs;
                    uint256 cd;
                    uint256 ct;
                    uint256 c2z;
                    {
                        uint256 cx =
                            mulmod(kkx, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 cy =
                            mulmod(kky, kku, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 cz =
                            mulmod(kku, kkv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        ct = mulmod(
                            kkx,
                            kky,
                            0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                        );
                        cs = cy + cx;
                        cd = cy - cx + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        c2z = cz + cz;
                    }
                    tables_[1][0][i] = cs;
                    tables_[1][1][i] = cd;
                    tables_[1][2][i] = mulmod(
                        ct,
                        0x2406d9dc_56dffce7_198e80f2_eef3d130_00e0149a_8283b156_ebd69b94_26b2f159,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                    tables_[0][0][i] = c2z;
                    tables_[0][1][i] = cprod;
                    cprod = mulmod(
                        cprod,
                        c2z,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                    if (i == 7) {
                        break;
                    }
                    uint256 ab =
                        mulmod(cs, ks, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 aa =
                        mulmod(cd, kd, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    uint256 ac =
                        mulmod(ct, k2dt, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    kkx = ab - aa + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                    kku = addmod(c2z, ac, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                    kky = ab + aa;
                    kkv = addmod(
                        c2z,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed - ac,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                }
                uint256 t;
                (cprod, t) = Ed25519_pow.pow22501(cprod);
                cprod = mulmod(cprod, cprod, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                cprod = mulmod(cprod, cprod, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                cprod = mulmod(cprod, cprod, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                cprod = mulmod(cprod, cprod, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                cprod = mulmod(cprod, cprod, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                cprod = mulmod(cprod, t, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                for (uint256 i = 7; ; i--) {
                    uint256 cinv =
                        mulmod(
                            cprod,
                            tables_[0][1][i],
                            0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                        );
                    tables_[1][0][i] = mulmod(
                        tables_[1][0][i],
                        cinv,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                    tables_[1][1][i] = mulmod(
                        tables_[1][1][i],
                        cinv,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                    tables_[1][2][i] = mulmod(
                        tables_[1][2][i],
                        cinv,
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                    if (i == 0) {
                        break;
                    }
                    cprod = mulmod(
                        cprod,
                        tables_[0][0][i],
                        0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                    );
                }
                tables_[0] = [
                    [
                        0x43e7ce9d_19ea5d32_9385a44c_321ea161_67c996e3_7dc6070c_97de49e3_7ac61db9,
                        0x40cff344_25d8ec30_a3bb74ba_58cd5854_fa1e3818_6ad0d31e_bc8ae251_ceb2c97e,
                        0x459bd270_46e8dd45_aea7008d_b87a5a8f_79067792_53d64523_58951859_9fdfbf4b,
                        0x69fdd1e2_8c23cc38_94d0c8ff_90e76f6d_5b6e4c2e_620136d0_4dd83c4a_51581ab9,
                        0x54dceb34_13ce5cfa_11196dfc_960b6eda_f4b380c6_d4d23784_19cc0279_ba49c5f3,
                        0x4e24184d_d71a3d77_eef3729f_7f8cf7c1_7224cf40_aa7b9548_b9942f3c_5084ceed,
                        0x5a0e5aab_20262674_ae117576_1cbf5e88_9b52a55f_d7ac5027_c228cebd_c8d2360a,
                        0x26239334_073e9b38_c6285955_6d451c3d_cc8d30e8_4b361174_f488eadd_e2cf17d9
                    ],
                    [
                        0x227e97c9_4c7c0933_d2e0c21a_3447c504_fe9ccf82_e8a05f59_ce881c82_eba0489f,
                        0x226a3e0e_cc4afec6_fd0d2884_13014a9d_bddecf06_c1a2f0bb_702ba77c_613d8209,
                        0x34d7efc8_51d45c5e_71efeb0f_235b7946_91de6228_877569b3_a8d52bf0_58b8a4a0,
                        0x3c1f5fb3_ca7166fc_e1471c9b_752b6d28_c56301ad_7b65e845_1b2c8c55_26726e12,
                        0x6102416c_f02f02ff_5be75275_f55f28db_89b2a9d2_456b860c_e22fc0e5_031f7cc5,
                        0x40adf677_f1bfdae0_57f0fd17_9c126179_18ddaa28_91a6530f_b1a4294f_a8665490,
                        0x61936f3c_41560904_6187b8ba_a978cbc9_b4789336_3ae5a3cc_7d909f36_35ae7f48,
                        0x562a9662_b6ec47f9_e979d473_c02b51e4_42336823_8c58ddb5_2f0e5c6a_180e6410
                    ],
                    [
                        0x3788bdb4_4f8632d4_2d0dbee5_eea1acc6_136cf411_e655624f_55e48902_c3bd5534,
                        0x6190cf2c_2a7b5ad7_69d594a8_2844f23b_4167fa7c_8ac30e51_aa6cfbeb_dcd4b945,
                        0x65f77870_96be9204_123a71f3_ac88a87b_e1513217_737d6a1e_2f3a13a4_3d7e3a9a,
                        0x23af32d_bfa67975_536479a7_a7ce74a0_2142147f_ac048018_7f1f1334_9cda1f2d,
                        0x64fc44b7_fc6841bd_db0ced8b_8b0fe675_9137ef87_ee966512_15fc1dbc_d25c64dc,
                        0x1434aa37_48b701d5_b69df3d7_d340c1fe_3f6b9c1e_fc617484_caadb47e_382f4475,
                        0x457a6da8_c962ef35_f2b21742_3e5844e9_d2353452_7e8ea429_0d24e3dd_f21720c6,
                        0x63b9540c_eb60ccb5_1e4d989d_956e053c_f2511837_efb79089_d2ff4028_4202c53d
                    ]
                ];
            }
            // Step 4: compute s*G - h*A
            {
                uint256 ss = uint256(s) << 3;
                uint256 hhh = hh + 0x80000000_00000000_00000000_00000000_a6f7cef5_17bce6b2_c09318d2_e7ae9f60;
                uint256 vvx = 0;
                uint256 vvu = 1;
                uint256 vvy = 1;
                uint256 vvv = 1;
                for (uint256 i = 252; ; i--) {
                    uint256 bit = 8 << i;
                    if ((ss & bit) != 0) {
                        uint256 ws;
                        uint256 wd;
                        uint256 wz;
                        uint256 wt;
                        {
                            uint256 wx =
                                mulmod(
                                    vvx,
                                    vvv,
                                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                                );
                            uint256 wy =
                                mulmod(
                                    vvy,
                                    vvu,
                                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                                );
                            ws = wy + wx;
                            wd = wy - wx + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                            wz = mulmod(
                                vvu,
                                vvv,
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                            wt = mulmod(
                                vvx,
                                vvy,
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        }
                        uint256 j = (ss >> i) & 7;
                        ss &= ~(7 << i);
                        uint256[8][3][2] memory tables_ = tables;
                        uint256 aa =
                            mulmod(
                                wd,
                                tables_[0][1][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        uint256 ab =
                            mulmod(
                                ws,
                                tables_[0][0][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        uint256 ac =
                            mulmod(
                                wt,
                                tables_[0][2][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        vvx = ab - aa + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        vvu = wz + ac;
                        vvy = ab + aa;
                        vvv = wz - ac + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                    }
                    if ((hhh & bit) != 0) {
                        uint256 ws;
                        uint256 wd;
                        uint256 wz;
                        uint256 wt;
                        {
                            uint256 wx =
                                mulmod(
                                    vvx,
                                    vvv,
                                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                                );
                            uint256 wy =
                                mulmod(
                                    vvy,
                                    vvu,
                                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                                );
                            ws = wy + wx;
                            wd = wy - wx + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                            wz = mulmod(
                                vvu,
                                vvv,
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                            wt = mulmod(
                                vvx,
                                vvy,
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        }
                        uint256 j = (hhh >> i) & 7;
                        hhh &= ~(7 << i);
                        uint256[8][3][2] memory tables_ = tables;
                        uint256 aa =
                            mulmod(
                                wd,
                                tables_[1][0][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        uint256 ab =
                            mulmod(
                                ws,
                                tables_[1][1][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        uint256 ac =
                            mulmod(
                                wt,
                                tables_[1][2][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        vvx = ab - aa + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        vvu = wz - ac + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        vvy = ab + aa;
                        vvv = wz + ac;
                    }
                    if (i == 0) {
                        uint256 ws;
                        uint256 wd;
                        uint256 wz;
                        uint256 wt;
                        {
                            uint256 wx =
                                mulmod(
                                    vvx,
                                    vvv,
                                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                                );
                            uint256 wy =
                                mulmod(
                                    vvy,
                                    vvu,
                                    0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                                );
                            ws = wy + wx;
                            wd = wy - wx + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                            wz = mulmod(
                                vvu,
                                vvv,
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                            wt = mulmod(
                                vvx,
                                vvy,
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        }
                        uint256 j = hhh & 7;
                        uint256[8][3][2] memory tables_ = tables;
                        uint256 aa =
                            mulmod(
                                wd,
                                tables_[1][0][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        uint256 ab =
                            mulmod(
                                ws,
                                tables_[1][1][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        uint256 ac =
                            mulmod(
                                wt,
                                tables_[1][2][j],
                                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                            );
                        vvx = ab - aa + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        vvu = wz - ac + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        vvy = ab + aa;
                        vvv = wz + ac;
                        break;
                    }
                    {
                        uint256 xx =
                            mulmod(vvx, vvv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 yy =
                            mulmod(vvy, vvu, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 zz =
                            mulmod(vvu, vvv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 xx2 =
                            mulmod(xx, xx, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 yy2 =
                            mulmod(yy, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 xxyy =
                            mulmod(xx, yy, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        uint256 zz2 =
                            mulmod(zz, zz, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
                        vvx = xxyy + xxyy;
                        vvu = yy2 - xx2 + 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed;
                        vvy = xx2 + yy2;
                        vvv = addmod(
                            zz2 + zz2,
                            0xffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffda - vvu,
                            0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
                        );
                    }
                }
                vx = vvx;
                vu = vvu;
                vy = vvy;
                vv = vvv;
            }
            // Step 5: compare the points
            (uint256 vi, uint256 vj) =
                Ed25519_pow.pow22501(mulmod(vu, vv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed));
            vi = mulmod(vi, vi, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
            vi = mulmod(vi, vi, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
            vi = mulmod(vi, vi, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
            vi = mulmod(vi, vi, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
            vi = mulmod(vi, vi, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
            vi = mulmod(vi, vj, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed);
            vx = mulmod(
                vx,
                mulmod(vi, vv, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
            );
            vy = mulmod(
                vy,
                mulmod(vi, vu, 0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed),
                0x7fffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffed
            );
            bytes32 vr = bytes32(vy | (vx << 255));
            vr = bytes32(
                ((uint256(vr) & 0xff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff_00ff00ff) << 8) |
                    ((uint256(vr) & 0xff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00_ff00ff00) >> 8)
            );
            vr = bytes32(
                ((uint256(vr) & 0xffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff_0000ffff) << 16) |
                    ((uint256(vr) & 0xffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000_ffff0000) >> 16)
            );
            vr = bytes32(
                ((uint256(vr) & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff) << 32) |
                    ((uint256(vr) & 0xffffffff_00000000_ffffffff_00000000_ffffffff_00000000_ffffffff_00000000) >> 32)
            );
            vr = bytes32(
                ((uint256(vr) & 0xffffffff_ffffffff_00000000_00000000_ffffffff_ffffffff) << 64) |
                    ((uint256(vr) & 0xffffffff_ffffffff_00000000_00000000_ffffffff_ffffffff_00000000_00000000) >> 64)
            );
            vr = bytes32((uint256(vr) << 128) | (uint256(vr) >> 128));

            return vr == r;
        }
    }
}


// File contracts/libraries/Blake3.sol

// Original license: SPDX_License_Identifier: GPL-3.0
pragma solidity ^0.8.9;

library Blake3 {
    uint256 constant BLOCK_LEN = 64;
    uint32 constant OUT_LEN = 32;
    uint32 constant CHUNK_LEN = 1024;

    // Flag constants
    uint32 constant CHUNK_START = 1 << 0;
    uint32 constant CHUNK_END = 1 << 1;
    uint32 constant PARENT = 1 << 2;
    uint32 constant ROOT = 1 << 3;
    uint32 constant KEYED_HASH = 1 << 4;
    uint32 constant DERIVE_KEY_CONTEXT = 1 << 5;
    uint32 constant DERIVE_KEY_MATERIAL = 1 << 6;

    // Product of a ChunkState before deriving chain value
    struct Output {
        uint32[8] input_chaining_value;
        uint32[16] block_words;
        uint64 counter;
        uint256 block_len;
        uint32 flags;
    }

    struct ChunkState {
        uint32[8] chaining_value;
        uint64 chunk_counter;
        // Has a max size of BLOCK_LEN
        bytes block_bytes;
        uint256 block_len;
        uint256 blocks_compressed;
        uint32 flags;
    }

    // An incremental hasher that can accept any number of writes.
    struct Hasher {
        ChunkState chunk_state;
        uint32[8] key_words;
        uint32[8][54] cv_stack; // Space for 54 subtree chaining values:
        uint8 cv_stack_len;     // 2^54 * CHUNK_LEN = 2^64
        uint32 flags;
    }

    // INTERNAL FUNCTIONS

    // This should remain constant but solidity doesn't support declaring it
    // uint8[16] MSG_PERMUTATION = [2, 6, 3, 10, 7, 0, 4, 13, 1, 11, 12, 5, 9, 14, 15, 8];
    // uint32[8] IV = [
    //     0x6A09E667, 0xBB67AE85, 0x3C6EF372, 0xA54FF53A, 0x510E527F, 0x9B05688C, 0x1F83D9AB, 0x5BE0CD19
    // ];
    function _MSG_PERMUTATION() internal pure returns (uint8[16] memory) {
        return [2, 6, 3, 10, 7, 0, 4, 13, 1, 11, 12, 5, 9, 14, 15, 8];
    }

    function _IV() internal pure returns (uint32[8] memory) {
        return [0x6A09E667, 0xBB67AE85, 0x3C6EF372, 0xA54FF53A, 0x510E527F, 0x9B05688C, 0x1F83D9AB, 0x5BE0CD19];
    }

    // Mixing function G
    function _g(
        uint32[16] memory state,
        uint32 a,
        uint32 b,
        uint32 c,
        uint32 d,
        uint32 mx,
        uint32 my
    ) internal pure {
        unchecked {
            state[a] = state[a] + state[b] + mx;
            state[d] = _rotr(state[d] ^ state[a], 16);
            state[c] = state[c] + state[d];
            state[b] = _rotr(state[b] ^ state[c], 12);
            state[a] = state[a] + state[b] + my;
            state[d] = _rotr(state[d] ^ state[a], 8);
            state[c] = state[c] + state[d];
            state[b] = _rotr(state[b] ^ state[c], 7);
        }
    }

    function _round(uint32[16] memory state, uint32[16] memory m) internal pure {
        // Mix the columns.
        _g(state, 0, 4, 8, 12, m[0], m[1]);
        _g(state, 1, 5, 9, 13, m[2], m[3]);
        _g(state, 2, 6, 10, 14, m[4], m[5]);
        _g(state, 3, 7, 11, 15, m[6], m[7]);

        // Mix the diagonals.
        _g(state, 0, 5, 10, 15, m[8], m[9]);
        _g(state, 1, 6, 11, 12, m[10], m[11]);
        _g(state, 2, 7, 8, 13, m[12], m[13]);
        _g(state, 3, 4, 9, 14, m[14], m[15]);
    }

    function _permute(uint32[16] memory m) internal pure {
        uint8[16] memory MSG_PERMUTATION = _MSG_PERMUTATION();
        uint32[16] memory permuted;

        for (uint256 i = 0; i < 16; ++i) {
            permuted[i] = m[MSG_PERMUTATION[i]];
        }

        for (uint256 i = 0; i < 16; ++i) {
            m[i] = permuted[i];
        }
    }

    function _compress(
        uint32[8] memory chaining_value,
        uint32[16] memory block_words_ref,
        uint64 counter,
        uint256 block_len,
        uint32 flags
    ) internal pure returns (uint32[16] memory) {
        uint32[8] memory IV = _IV();
        uint32[16] memory block_words;
        for (uint256 i = 0; i < 16; ++i) {
            block_words[i] = block_words_ref[i];
        }

        uint32[16] memory state = [
            chaining_value[0],
            chaining_value[1],
            chaining_value[2],
            chaining_value[3],
            chaining_value[4],
            chaining_value[5],
            chaining_value[6],
            chaining_value[7],
            IV[0],
            IV[1],
            IV[2],
            IV[3],
            uint32(counter),
            uint32(counter >> 32),
            ///////////////////////////////
            uint32(block_len),
            flags
        ];


        _round(state, block_words); // round 1
        _permute(block_words);
        _round(state, block_words); // round 2
        _permute(block_words);
        _round(state, block_words); // round 3
        _permute(block_words);
        _round(state, block_words); // round 4
        _permute(block_words);
        _round(state, block_words); // round 5
        _permute(block_words);
        _round(state, block_words); // round 6
        _permute(block_words);
        _round(state, block_words); // round 7

        for (uint256 i = 0; i < 8; ++i) {
            state[i] ^= state[i + 8];
            state[i + 8] ^= chaining_value[i];
        }

        return state;
    }

    function _rotr(uint32 x, uint8 n) internal pure returns (uint32) {
        bytes4 b = bytes4(x);
        return uint32((b >> n) | (b << (32 - n)));
    }

    function _chaining_value(Output memory o) internal pure returns (uint32[8] memory) {
        uint32[16] memory compression_output = _compress(
            o.input_chaining_value,
            o.block_words,
            o.counter,
            o.block_len,
            o.flags
        );

        return _first_8_words(compression_output);
    }

    function _root_output_bytes(
        Output memory self,
        bytes memory out_slice
    ) internal pure {
        //uint32 output_block_counter = 0;
        // Take 64-byte chunks at a time from out_slice
        //for (uint32 i = 0; i < out_slice.length; i += 2 * OUT_LEN) {
        uint32[16] memory words = _compress(
            self.input_chaining_value,
            self.block_words,
            0,
            //output_block_counter,
            self.block_len,
            self.flags | ROOT
        );

        // Load compressed words into out_slice (4 bytes at a time)
        // The output length might not be a multiple of 4.
        //for (uint32 j = 0; j < words.length && out_slice.length > j*4; j++) {
        //for (uint32 j = 0; j < words.length; j++) {
        for (uint32 j = 0; j < 8; j++) {
            // Load word at j into out_slice as little endian
            _load_uint32_to_le_bytes(words[j], out_slice, j*4);
        }

            //output_block_counter += 1;
        //}
    }

    function _load_uint32_to_le_bytes(
        uint32 n,
        bytes memory buf,
        uint32 offset
    ) internal pure {
        for (uint256 i = 0; i < 4; ++i) {
            buf[offset+i] = bytes1(uint8(n / (2 ** (i*8))));
        }
    }

    function _uint32_to_le_bytes(uint32 n) internal pure returns (bytes4) {
        bytes4 buf;
        for (uint256 i = 0; i < 4; ++i) {
            assembly {
                let cc := add(buf, 0x20)
                let buf_idx := add(cc, sub(3, i))
                let n_idx := add(n, i)
                mstore8(buf_idx, n_idx)
            }
        }

        return buf;
    }


    function _le_bytes_get_uint32(bytes memory _bytes, uint256 _start) internal pure returns (uint32) {
        require(_bytes.length >= _start + 4, "le_bytes_get_uint32_outOfBounds");
        uint32 tempUint;

        for (uint256 i = 0; i < 4; ++i) {
            //tempUint += uint32(uint8(_bytes[i]) * (2 ** (8*i)));
            tempUint += uint32(bytes4(_bytes[3-i+_start]) >> (8 * i));
        }
        /*
        assembly {
            // TODO why is this 0x4 in the bytes library???
            //tempUint := mload(add(add(_bytes, 0x4), _start))

            // Load 32 bytes from array (u256)
            tempUint := mload(add(add(_bytes, 0x20), _start))
            // Keep just the first 4 bytes (u32)
            //tempUint := xor(tempUint, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000)
            tempUint := xor(tempUint, 0x00000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        }
        */

        return tempUint;
    }

    function _words_from_little_endian_bytes8(
        bytes memory data_bytes,
        uint32[8] memory words
    ) internal pure {
        require(data_bytes.length <= 4*8,
                "Data bytes is too long to convert to 8 4-byte words");

        for (uint256 i = 0; i < data_bytes.length/4; ++i) {
            words[i] = _le_bytes_get_uint32(data_bytes, i*4);
        }
    }

    function _words_from_little_endian_bytes(
        bytes memory data_bytes,
        uint32[16] memory words
    ) internal pure {
        require(data_bytes.length <= 64 && data_bytes.length%4 == 0,
                "Data bytes is too long to convert to 16 4-byte words");

        for (uint256 i = 0; i < data_bytes.length/4; ++i) {
            words[i] = _le_bytes_get_uint32(data_bytes, i*4);
        }
    }


    // TODO I wish this didn't require a copy to convert array sizes
    function _first_8_words(uint32[16] memory words) internal pure returns (uint32[8] memory) {
        // TODO there must be a way to do this without copying
        // How to take a slice of a memory array?
        uint32[8] memory first_8;
        for (uint256 i = 0; i < 8; ++i) {
            first_8[i] = words[i];
        }

        return first_8;
    }


    //
    // Chunk state functions
    //

    function _new_chunkstate(
        uint32[8] memory key_words,
        uint64 chunk_counter,
        uint32 flags
    ) internal pure returns (ChunkState memory) {
        bytes memory block_bytes = new bytes(BLOCK_LEN);
        return ChunkState({
            chaining_value: key_words,
            chunk_counter: chunk_counter,
            block_bytes: block_bytes,
            block_len: 0,
            blocks_compressed: 0,
            flags: flags
        });
    }

    function _len(ChunkState memory chunk) internal pure returns (uint256) {
        return BLOCK_LEN * chunk.blocks_compressed + chunk.block_len;
    }

    function _start_flag(ChunkState memory chunk) internal pure returns (uint32) {
        if (chunk.blocks_compressed == 0) {
            return CHUNK_START;
        } else {
            return 0;
        }
    }

    // Returns a new input offset
    function _update_chunkstate(
        ChunkState memory chunk,
        bytes memory input
    ) internal pure {//returns (uint32) {
        uint256 input_offset = 0;
        while (input_offset < input.length) {
            // If the block buffer is full, compress it and clear it. More
            // input is coming, so this compression is not CHUNK_END.
            if (chunk.block_len == BLOCK_LEN) {
                uint32[16] memory block_words;
                _words_from_little_endian_bytes(chunk.block_bytes, block_words);
                chunk.chaining_value = _first_8_words(_compress(
                    chunk.chaining_value,
                    block_words,
                    chunk.chunk_counter,
                    BLOCK_LEN,
                    chunk.flags | _start_flag(chunk)
                ));
                chunk.blocks_compressed += 1;
                // TODO probably cheaper to zero-out byte array than to reallocate
                chunk.block_bytes = new bytes(BLOCK_LEN);
                chunk.block_len = 0;
            }

            // Take enough to fill a block [min(want, input.length)]
            uint256 want = BLOCK_LEN - chunk.block_len;
            uint256 take = _min(want, input.length - input_offset);

            // Copy bytes from input to chunk block
            //chunk.block_bytes[self.block_len as usize..][..take].copy_from_slice(&input[..take]);
            for (uint256 i = 0; i < take; ++i) {
                // TODO recheck this logic
                chunk.block_bytes[i+chunk.block_len] = input[input_offset+i];
            }
            /*
            bytes memory block_ref = chunk.block_bytes;
            uint32 blen = chunk.block_len;
            assembly {
                let block_addr := add(add(block_ref, 0x20), blen)
                let input_addr := add(add(input.offset, 0x20), input_offset)
                memorycopy(block_addr, input_addr, take)
            }
            */

            chunk.block_len += take;
            input_offset += take;
        }
    }

    function _min(uint256 x, uint256 y) internal pure returns (uint256) {
        if (x < y) {
            return x;
        } else {
            return y;
        }
    }

    function _output(ChunkState memory chunk) internal pure returns (Output memory) {
        uint32[16] memory block_words;
        _words_from_little_endian_bytes(chunk.block_bytes, block_words);

        return Output({
            input_chaining_value: chunk.chaining_value,
            block_words: block_words,
            counter: chunk.chunk_counter,
            block_len: chunk.block_len,
            flags: chunk.flags | _start_flag(chunk) | CHUNK_END
        });
    }

    //
    // Parent functions
    //

    function _parent_output(
        uint32[8] memory left_child_cv,
        uint32[8] memory right_child_cv,
        uint32[8] memory key_words,
        uint32 flags
    ) internal pure returns (Output memory) {
        uint32[16] memory block_words;

        for (uint256 i = 0; i < 8; ++i) {
            block_words[i] = left_child_cv[i];
        }

        for (uint256 i = 8; i < 16; ++i) {
            block_words[i] = right_child_cv[i - 8];
        }

        return Output({
            input_chaining_value: key_words,
            block_words: block_words,
            counter: 0,           // Always 0 for parent nodes.
            block_len: BLOCK_LEN, // Always BLOCK_LEN (64) for parent nodes.
            flags: PARENT | flags
        });
    }

    function _parent_cv(
        uint32[8] memory left_child_cv,
        uint32[8] memory right_child_cv,
        uint32[8] memory key_words,
        uint32 flags
    ) internal pure returns (uint32[8] memory) {
        return _chaining_value(_parent_output(left_child_cv, right_child_cv, key_words, flags));
    }


    //
    // Hasher functions
    //

    function _new_hasher_internal(
        uint32[8] memory key_words, uint32 flags
    ) internal pure returns (Hasher memory) {
        uint32[8][54] memory cv_stack;
        return Hasher({
            chunk_state: _new_chunkstate(key_words, 0, flags),
            key_words: key_words,
            cv_stack: cv_stack,
            cv_stack_len: 0,
            flags: flags
        });
    }

    /// Construct a new `Hasher` for the regular hash function.
    function new_hasher() internal pure returns (Hasher memory) {
        uint32[8] memory IV = _IV();
        return _new_hasher_internal(IV, 0);
    }

    /// Construct a new `Hasher` for the keyed hash function.
    function new_keyed(bytes memory key) internal pure returns (Hasher memory) {
        uint32[8] memory key_words;
        bytes memory key_mem = key;
        _words_from_little_endian_bytes8(key_mem, key_words);
        return _new_hasher_internal(key_words, KEYED_HASH);
    }

    // Construct a new `Hasher` for the key derivation function. The context
    // string should be hardcoded, globally unique, and application-specific
    function new_derive_key(bytes memory context) internal pure returns (Hasher memory) {
        uint32[8] memory IV = _IV();
        Hasher memory context_hasher = _new_hasher_internal(IV, DERIVE_KEY_CONTEXT);
        update_hasher(context_hasher, context);

        bytes memory context_key = new bytes(256);
        _finalize_internal(context_hasher, context_key);

        uint32[8] memory context_key_words;
        _words_from_little_endian_bytes8(context_key, context_key_words);

        return _new_hasher_internal(context_key_words, DERIVE_KEY_MATERIAL);
    }

    function _push_stack(Hasher memory self, uint32[8] memory cv) internal pure {
        self.cv_stack[self.cv_stack_len] = cv;
        self.cv_stack_len += 1;
    }

    function _pop_stack(Hasher memory self) internal pure returns (uint32[8] memory) {
        self.cv_stack_len -= 1;
        return self.cv_stack[self.cv_stack_len];
    }

    function _add_chunk_chaining_value(
        Hasher memory self,
        uint32[8] memory new_cv,
        uint64 total_chunks
    ) internal pure {
        while (total_chunks & 1 == 0) {
            new_cv = _parent_cv(_pop_stack(self), new_cv, self.key_words, self.flags);
            total_chunks >>= 1;
        }

        _push_stack(self, new_cv);
    }

    function _slice(
        bytes memory data,
        uint256 start,
        uint256 end
    ) internal pure returns (bytes memory) {
        uint256 dataSliceLength = end - start;
        bytes memory dataSlice = new bytes(dataSliceLength);

        for (uint256 i = 0; i < dataSliceLength; ++i) {
            dataSlice[i] = data[start + i];
        }

        return dataSlice;
    }

    // Add input to the hash state. This can be called any number of times.
    function update_hasher(
        Hasher memory self, bytes memory input
    ) internal pure returns (Hasher memory) {
        uint256 input_offset = 0;

        while (input_offset < input.length) {
            // If the current chunk is complete, finalize it and reset the
            // chunk state. More input is coming, so this chunk is not ROOT.
                if (_len(self.chunk_state) == CHUNK_LEN) {
                uint32[8] memory chunk_cv = _chaining_value(_output(self.chunk_state));
                uint64 total_chunks = self.chunk_state.chunk_counter + 1;

                _add_chunk_chaining_value(self, chunk_cv, total_chunks);

                self.chunk_state = _new_chunkstate(self.key_words, total_chunks, self.flags);
            }

            // Compress input bytes into the current chunk state.
            uint256 want = CHUNK_LEN - _len(self.chunk_state);
            uint256 take = _min(want, uint32(input.length - input_offset));

            // Update chunk state
            bytes memory input_slice = _slice(input, input_offset, take + input_offset);
            _update_chunkstate(self.chunk_state, input_slice);

            input_offset += take;
        }

        return self;
    }

    function finalize(Hasher memory self) internal pure returns (bytes memory) {
        bytes memory output = new bytes(32);

        _finalize_internal(self, output);

        return output;
    }

    function _finalize_internal(
        Hasher memory self, bytes memory out_slice
    ) internal pure {
        // Starting with the Output from the current chunk, compute all the
        // parent chaining values along the right edge of the tree, until we
        // have the root Output.
        Output memory output = _output(self.chunk_state);
        uint32 parent_nodes_remaining = self.cv_stack_len;

        while (parent_nodes_remaining > 0) {
            parent_nodes_remaining -= 1;

            output = _parent_output(
                self.cv_stack[parent_nodes_remaining],
                _chaining_value(output),
                self.key_words,
                self.flags
            );
        }
        _root_output_bytes(output, out_slice);
    }

    function sliceBytes(bytes memory message, uint64 length) internal pure returns (bytes memory) {
        require(length <= message.length, "Length exceeds message length");
        
        // Overwrite the length field of the bytes to crop the message
        assembly {
            mstore(message, length)
        }
        
        return message;
    }

    function hash(
        bytes memory message,
        uint32 length
    ) external pure returns (bytes memory) {
        Hasher memory hasher = new_hasher();
        update_hasher(hasher, message);

        return sliceBytes(finalize(hasher), length);
    }
}


// File @lazyledger/protobuf3-solidity-lib/contracts/ProtobufLib.sol@v0.6.0

// Original license: SPDX_License_Identifier: Apache-2.0
pragma solidity >=0.8.4 <0.9.0;

library ProtobufLib {
    /// @notice Protobuf wire types.
    enum WireType {
        Varint,
        Bits64,
        LengthDelimited,
        StartGroup,
        EndGroup,
        Bits32,
        WIRE_TYPE_MAX
    }

    /// @dev Maximum number of bytes for a varint.
    /// @dev 64 bits, in groups of base-128 (7 bits).
    uint64 internal constant MAX_VARINT_BYTES = 10;

    ////////////////////////////////////
    // Decoding
    ////////////////////////////////////

    /// @notice Decode key.
    /// @dev https://developers.google.com/protocol-buffers/docs/encoding#structure
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Field number
    /// @return Wire type
    function decode_key(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64,
            WireType
        )
    {
        // The key is a varint with encoding
        // (field_number << 3) | wire_type
        (bool success, uint64 pos, uint64 key) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0, WireType.WIRE_TYPE_MAX);
        }

        uint64 field_number = key >> 3;
        uint64 wire_type_val = key & 0x07;
        // Check that wire type is bounded
        if (wire_type_val >= uint64(WireType.WIRE_TYPE_MAX)) {
            return (false, pos, 0, WireType.WIRE_TYPE_MAX);
        }
        WireType wire_type = WireType(wire_type_val);

        // Start and end group types are deprecated, so forbid them
        if (wire_type == WireType.StartGroup || wire_type == WireType.EndGroup) {
            return (false, pos, 0, WireType.WIRE_TYPE_MAX);
        }

        return (true, pos, field_number, wire_type);
    }

    /// @notice Decode varint.
    /// @dev https://developers.google.com/protocol-buffers/docs/encoding#varints
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_varint(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        uint64 val;
        uint64 i;

        for (i = 0; i < MAX_VARINT_BYTES; i++) {
            // Check that index is within bounds
            if (i + p >= buf.length) {
                return (false, p, 0);
            }

            // Get byte at offset
            uint8 b = uint8(buf[p + i]);

            // Highest bit is used to indicate if there are more bytes to come
            // Mask to get 7-bit value: 0111 1111
            uint8 v = b & 0x7F;

            // Groups of 7 bits are ordered least significant first
            val |= uint64(v) << uint64(i * 7);

            // Mask to get keep going bit: 1000 0000
            if (b & 0x80 == 0) {
                // [STRICT]
                // Check for trailing zeroes if more than one byte is used
                // (the value 0 still uses one byte)
                if (i > 0 && v == 0) {
                    return (false, p, 0);
                }

                break;
            }
        }

        // Check that at most MAX_VARINT_BYTES are used
        if (i >= MAX_VARINT_BYTES) {
            return (false, p, 0);
        }

        // [STRICT]
        // If all 10 bytes are used, the last byte (most significant 7 bits)
        // must be at most 0000 0001, since 7*9 = 63
        if (i == MAX_VARINT_BYTES - 1) {
            if (uint8(buf[p + i]) > 1) {
                return (false, p, 0);
            }
        }

        return (true, p + i + 1, val);
    }

    /// @notice Decode varint int32.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_int32(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int32
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        // [STRICT]
        // Highest 4 bytes must be 0 if positive
        if (val >> 63 == 0) {
            if (val & 0xFFFFFFFF00000000 != 0) {
                return (false, pos, 0);
            }
        }

        return (true, pos, int32(uint32(val)));
    }

    /// @notice Decode varint int64.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_int64(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int64
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        return (true, pos, int64(val));
    }

    /// @notice Decode varint uint32.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_uint32(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint32
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        // [STRICT]
        // Highest 4 bytes must be 0
        if (val & 0xFFFFFFFF00000000 != 0) {
            return (false, pos, 0);
        }

        return (true, pos, uint32(val));
    }

    /// @notice Decode varint uint64.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_uint64(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        return (true, pos, val);
    }

    /// @notice Decode varint sint32.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_sint32(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int32
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        // [STRICT]
        // Highest 4 bytes must be 0
        if (val & 0xFFFFFFFF00000000 != 0) {
            return (false, pos, 0);
        }

        // https://stackoverflow.com/questions/2210923/zig-zag-decoding/2211086#2211086
        uint64 zigzag_val;
        unchecked {
            zigzag_val = (val >> 1) - (~(val & 1) + 1);
        }

        return (true, pos, int32(uint32(zigzag_val)));
    }

    /// @notice Decode varint sint64.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_sint64(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int64
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        // https://stackoverflow.com/questions/2210923/zig-zag-decoding/2211086#2211086
        uint64 zigzag_val;
        unchecked {
            zigzag_val = (val >> 1) - (~(val & 1) + 1);
        }

        return (true, pos, int64(zigzag_val));
    }

    /// @notice Decode Boolean.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded bool
    function decode_bool(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            bool
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, false);
        }

        // [STRICT]
        // Value must be 0 or 1
        if (val > 1) {
            return (false, pos, false);
        }

        if (val == 0) {
            return (true, pos, false);
        }

        return (true, pos, true);
    }

    /// @notice Decode enumeration.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded enum as raw int
    function decode_enum(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int32
        )
    {
        return decode_int32(p, buf);
    }

    /// @notice Decode fixed 64-bit int.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_bits64(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        uint64 val;

        // Check that index is within bounds
        if (8 + p > buf.length) {
            return (false, p, 0);
        }

        for (uint64 i = 0; i < 8; i++) {
            uint8 b = uint8(buf[p + i]);

            // Little endian
            val |= uint64(b) << uint64(i * 8);
        }

        return (true, p + 8, val);
    }

    /// @notice Decode fixed uint64.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_fixed64(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_bits64(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        return (true, pos, val);
    }

    /// @notice Decode fixed int64.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_sfixed64(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int64
        )
    {
        (bool success, uint64 pos, uint64 val) = decode_bits64(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        return (true, pos, int64(val));
    }

    /// @notice Decode fixed 32-bit int.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_bits32(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint32
        )
    {
        uint32 val;

        // Check that index is within bounds
        if (4 + p > buf.length) {
            return (false, p, 0);
        }

        for (uint64 i = 0; i < 4; i++) {
            uint8 b = uint8(buf[p + i]);

            // Little endian
            val |= uint32(b) << uint32(i * 8);
        }

        return (true, p + 4, val);
    }

    /// @notice Decode fixed uint32.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_fixed32(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint32
        )
    {
        (bool success, uint64 pos, uint32 val) = decode_bits32(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        return (true, pos, val);
    }

    /// @notice Decode fixed int32.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Decoded int
    function decode_sfixed32(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            int32
        )
    {
        (bool success, uint64 pos, uint32 val) = decode_bits32(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        return (true, pos, int32(val));
    }

    /// @notice Decode length-delimited field.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position (after size)
    /// @return Size in bytes
    function decode_length_delimited(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        // Length-delimited fields begin with a varint of the number of bytes that follow
        (bool success, uint64 pos, uint64 size) = decode_varint(p, buf);
        if (!success) {
            return (false, pos, 0);
        }

        // Check for overflow
        unchecked {
            if (pos + size < pos) {
                return (false, pos, 0);
            }
        }

        // Check that index is within bounds
        if (size + pos > buf.length) {
            return (false, pos, 0);
        }

        return (true, pos, size);
    }

    /// @notice Decode string.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position
    /// @return Size in bytes
    function decode_string(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            string memory
        )
    {
        (bool success, uint64 pos, uint64 size) = decode_length_delimited(p, buf);
        if (!success) {
            return (false, pos, "");
        }

        bytes memory field = new bytes(size);
        for (uint64 i = 0; i < size; i++) {
            field[i] = buf[pos + i];
        }

        return (true, pos + size, string(field));
    }

    /// @notice Decode bytes array.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position (after size)
    /// @return Size in bytes
    function decode_bytes(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        return decode_length_delimited(p, buf);
    }

    /// @notice Decode embedded message.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position (after size)
    /// @return Size in bytes
    function decode_embedded_message(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        return decode_length_delimited(p, buf);
    }

    /// @notice Decode packed repeated field.
    /// @param p Position
    /// @param buf Buffer
    /// @return Success
    /// @return New position (after size)
    /// @return Size in bytes
    function decode_packed_repeated(uint64 p, bytes memory buf)
        internal
        pure
        returns (
            bool,
            uint64,
            uint64
        )
    {
        return decode_length_delimited(p, buf);
    }

    ////////////////////////////////////
    // Encoding
    ////////////////////////////////////

    /// @notice Encode key.
    /// @dev https://developers.google.com/protocol-buffers/docs/encoding#structure
    /// @param field_number Field number
    /// @param wire_type Wire type
    /// @return Marshaled bytes
    function encode_key(uint64 field_number, uint64 wire_type) internal pure returns (bytes memory) {
        uint64 key = (field_number << 3) | wire_type;

        bytes memory buf = encode_varint(key);

        return buf;
    }

    /// @notice Encode varint.
    /// @dev https://developers.google.com/protocol-buffers/docs/encoding#varints
    /// @param n Number
    /// @return Marshaled bytes
    function encode_varint(uint64 n) internal pure returns (bytes memory) {
        // Count the number of groups of 7 bits
        // We need this pre-processing step since Solidity doesn't allow dynamic memory resizing
        uint64 tmp = n;
        uint64 num_bytes = 1;
        while (tmp > 0x7F) {
            tmp = tmp >> 7;
            num_bytes += 1;
        }

        bytes memory buf = new bytes(num_bytes);

        tmp = n;
        for (uint64 i = 0; i < num_bytes; i++) {
            // Set the first bit in the byte for each group of 7 bits
            buf[i] = bytes1(0x80 | uint8(tmp & 0x7F));
            tmp = tmp >> 7;
        }
        // Unset the first bit of the last byte
        buf[num_bytes - 1] &= 0x7F;

        return buf;
    }

    /// @notice Encode varint int32.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_int32(int32 n) internal pure returns (bytes memory) {
        return encode_varint(uint64(int64(n)));
    }

    /// @notice Decode varint int64.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_int64(int64 n) internal pure returns (bytes memory) {
        return encode_varint(uint64(n));
    }

    /// @notice Encode varint uint32.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_uint32(uint32 n) internal pure returns (bytes memory) {
        return encode_varint(n);
    }

    /// @notice Encode varint uint64.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_uint64(uint64 n) internal pure returns (bytes memory) {
        return encode_varint(n);
    }

    /// @notice Encode varint sint32.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_sint32(int32 n) internal pure returns (bytes memory) {
        // https://developers.google.com/protocol-buffers/docs/encoding#signed_integers
        uint32 mask = 0;
        if (n < 0) {
            unchecked {
                mask -= 1;
            }
        }
        uint32 zigzag_val = (uint32(n) << 1) ^ mask;

        return encode_varint(zigzag_val);
    }

    /// @notice Encode varint sint64.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_sint64(int64 n) internal pure returns (bytes memory) {
        // https://developers.google.com/protocol-buffers/docs/encoding#signed_integers
        uint64 mask = 0;
        if (n < 0) {
            unchecked {
                mask -= 1;
            }
        }
        uint64 zigzag_val = (uint64(n) << 1) ^ mask;

        return encode_varint(zigzag_val);
    }

    /// @notice Encode Boolean.
    /// @param b Boolean
    /// @return Marshaled bytes
    function encode_bool(bool b) internal pure returns (bytes memory) {
        uint64 n = b ? 1 : 0;

        return encode_varint(n);
    }

    /// @notice Encode enumeration.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_enum(int32 n) internal pure returns (bytes memory) {
        return encode_int32(n);
    }

    /// @notice Encode fixed 64-bit int.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_bits64(uint64 n) internal pure returns (bytes memory) {
        bytes memory buf = new bytes(8);

        uint64 tmp = n;
        for (uint64 i = 0; i < 8; i++) {
            // Little endian
            buf[i] = bytes1(uint8(tmp & 0xFF));
            tmp = tmp >> 8;
        }

        return buf;
    }

    /// @notice Encode fixed uint64.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_fixed64(uint64 n) internal pure returns (bytes memory) {
        return encode_bits64(n);
    }

    /// @notice Encode fixed int64.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_sfixed64(int64 n) internal pure returns (bytes memory) {
        return encode_bits64(uint64(n));
    }

    /// @notice Decode fixed 32-bit int.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_bits32(uint32 n) internal pure returns (bytes memory) {
        bytes memory buf = new bytes(4);

        uint64 tmp = n;
        for (uint64 i = 0; i < 4; i++) {
            // Little endian
            buf[i] = bytes1(uint8(tmp & 0xFF));
            tmp = tmp >> 8;
        }

        return buf;
    }

    /// @notice Encode fixed uint32.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_fixed32(uint32 n) internal pure returns (bytes memory) {
        return encode_bits32(n);
    }

    /// @notice Encode fixed int32.
    /// @param n Number
    /// @return Marshaled bytes
    function encode_sfixed32(int32 n) internal pure returns (bytes memory) {
        return encode_bits32(uint32(n));
    }

    /// @notice Encode length-delimited field.
    /// @param b Bytes
    /// @return Marshaled bytes
    function encode_length_delimited(bytes memory b) internal pure returns (bytes memory) {
        // Length-delimited fields begin with a varint of the number of bytes that follow
        bytes memory length_buf = encode_uint64(uint64(b.length));
        bytes memory buf = new bytes(b.length + length_buf.length);

        for (uint64 i = 0; i < length_buf.length; i++) {
            buf[i] = length_buf[i];
        }

        for (uint64 i = 0; i < b.length; i++) {
            buf[i + length_buf.length] = b[i];
        }

        return buf;
    }

    /// @notice Encode string.
    /// @param s String
    /// @return Marshaled bytes
    function encode_string(string memory s) internal pure returns (bytes memory) {
        return encode_length_delimited(bytes(s));
    }

    /// @notice Encode bytes array.
    /// @param b Bytes
    /// @return Marshaled bytes
    function encode_bytes(bytes memory b) internal pure returns (bytes memory) {
        return encode_length_delimited(b);
    }

    /// @notice Encode embedded message.
    /// @param m Message
    /// @return Marshaled bytes
    function encode_embedded_message(bytes memory m) internal pure returns (bytes memory) {
        return encode_length_delimited(m);
    }

    /// @notice Encode packed repeated field.
    /// @param b Bytes
    /// @return Marshaled bytes
    function encode_packed_repeated(bytes memory b) internal pure returns (bytes memory) {
        return encode_length_delimited(b);
    }
}


// File contracts/protobufs/username_proof.proto.sol

// File automatically generated by protoc-gen-sol v0.2.0
// Original license: SPDX_License_Identifier: CC0
pragma solidity >=0.6.0 <8.0.0;
// Original pragma directive: pragma experimental ABIEncoderV2

enum UserNameType { USERNAME_TYPE_NONE, USERNAME_TYPE_FNAME, USERNAME_TYPE_ENS_L1 }

struct UserNameProof {
    uint64 timestamp;
    bytes name;
    bytes owner;
    bytes signature;
    uint64 fid;
    UserNameType type_;
}

library UserNameProofCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, UserNameProof memory) {
        // Message instance
        UserNameProof memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 6) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 4) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 5) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 6) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, UserNameProof memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 4) {
            bool success;
            (success, pos) = decode_4(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 5) {
            bool success;
            (success, pos) = decode_5(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 6) {
            bool success;
            (success, pos) = decode_6(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // UserNameProof.timestamp
    function decode_1(uint64 pos, bytes memory buf, UserNameProof memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 v;
        (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.timestamp = v;

        return (true, pos);
    }

    // UserNameProof.name
    function decode_2(uint64 pos, bytes memory buf, UserNameProof memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.name = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.name[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // UserNameProof.owner
    function decode_3(uint64 pos, bytes memory buf, UserNameProof memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.owner = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.owner[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // UserNameProof.signature
    function decode_4(uint64 pos, bytes memory buf, UserNameProof memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.signature = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.signature[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // UserNameProof.fid
    function decode_5(uint64 pos, bytes memory buf, UserNameProof memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 v;
        (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.fid = v;

        return (true, pos);
    }

    // UserNameProof.type_
    function decode_6(uint64 pos, bytes memory buf, UserNameProof memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 2) {
            return (false, pos);
        }

        instance.type_ = UserNameType(v);

        return (true, pos);
    }

}


// File contracts/protobufs/message.proto.sol

// File automatically generated by protoc-gen-sol v0.2.0
// Original license: SPDX_License_Identifier: CC0
pragma solidity >=0.6.0 <8.0.0;
// Original pragma directive: pragma experimental ABIEncoderV2


enum HashScheme { HASH_SCHEME_NONE, HASH_SCHEME_BLAKE3 }

enum SignatureScheme { SIGNATURE_SCHEME_NONE, SIGNATURE_SCHEME_ED25519, SIGNATURE_SCHEME_EIP712 }

enum MessageType { MESSAGE_TYPE_NONE, MESSAGE_TYPE_CAST_ADD, MESSAGE_TYPE_CAST_REMOVE, MESSAGE_TYPE_REACTION_ADD, MESSAGE_TYPE_REACTION_REMOVE, MESSAGE_TYPE_LINK_ADD, MESSAGE_TYPE_LINK_REMOVE, MESSAGE_TYPE_VERIFICATION_ADD_ETH_ADDRESS, MESSAGE_TYPE_VERIFICATION_REMOVE, DEPRECATED_MESSAGE_TYPE_SIGNER_ADD, DEPRECATED_MESSAGE_TYPE_SIGNER_REMOVE, MESSAGE_TYPE_USER_DATA_ADD, MESSAGE_TYPE_USERNAME_PROOF, MESSAGE_TYPE_FRAME_ACTION }

enum FarcasterNetwork { FARCASTER_NETWORK_NONE, FARCASTER_NETWORK_MAINNET, FARCASTER_NETWORK_TESTNET, FARCASTER_NETWORK_DEVNET }

enum UserDataType { USER_DATA_TYPE_NONE, USER_DATA_TYPE_PFP, USER_DATA_TYPE_DISPLAY, USER_DATA_TYPE_BIO, EMPTY, USER_DATA_TYPE_URL, USER_DATA_TYPE_USERNAME }

enum ReactionType { REACTION_TYPE_NONE, REACTION_TYPE_LIKE, REACTION_TYPE_RECAST }

struct Message {
    MessageData data;
    bytes hash_;
    HashScheme hash_scheme;
    bytes signature;
    SignatureScheme signature_scheme;
    bytes signer;
    bytes data_bytes;
}

library MessageCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, Message memory) {
        // Message instance
        Message memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 7) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 4) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 5) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 6) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 7) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, Message memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 4) {
            bool success;
            (success, pos) = decode_4(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 5) {
            bool success;
            (success, pos) = decode_5(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 6) {
            bool success;
            (success, pos) = decode_6(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 7) {
            bool success;
            (success, pos) = decode_7(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // Message.data
    function decode_1(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        MessageData memory nestedInstance;
        (success, pos, nestedInstance) = MessageDataCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.data = nestedInstance;

        return (true, pos);
    }

    // Message.hash_
    function decode_2(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.hash_ = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.hash_[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // Message.hash_scheme
    function decode_3(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 1) {
            return (false, pos);
        }

        instance.hash_scheme = HashScheme(v);

        return (true, pos);
    }

    // Message.signature
    function decode_4(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.signature = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.signature[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // Message.signature_scheme
    function decode_5(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 2) {
            return (false, pos);
        }

        instance.signature_scheme = SignatureScheme(v);

        return (true, pos);
    }

    // Message.signer
    function decode_6(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.signer = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.signer[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // Message.data_bytes
    function decode_7(uint64 pos, bytes memory buf, Message memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.data_bytes = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.data_bytes[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

}

struct MessageData {
    MessageType type_;
    uint64 fid;
    uint32 timestamp;
    FarcasterNetwork network;
    CastAddBody cast_add_body;
    bool empty_cast_remove_body;
    ReactionBody reaction_body;
    bool empty;
    VerificationAddEthAddressBody verification_add_eth_address_body;
    bool empty_verification_remove_body;
    bool deprecated_signer_add_body;
    bool user_data_body;
    bool deprecated_signer_remove_body;
    LinkBody link_body;
    bool empty_username_proof_body;
    FrameActionBody frame_action_body;
}

library MessageDataCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, MessageData memory) {
        // Message instance
        MessageData memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 16) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 4) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 5) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 6) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 7) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 8) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 9) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 10) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 11) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 12) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 13) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 14) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 15) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 16) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, MessageData memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 4) {
            bool success;
            (success, pos) = decode_4(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 5) {
            bool success;
            (success, pos) = decode_5(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 6) {
            bool success;
            (success, pos) = decode_6(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 7) {
            bool success;
            (success, pos) = decode_7(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 8) {
            bool success;
            (success, pos) = decode_8(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 9) {
            bool success;
            (success, pos) = decode_9(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 10) {
            bool success;
            (success, pos) = decode_10(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 11) {
            bool success;
            (success, pos) = decode_11(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 12) {
            bool success;
            (success, pos) = decode_12(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 13) {
            bool success;
            (success, pos) = decode_13(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 14) {
            bool success;
            (success, pos) = decode_14(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 15) {
            bool success;
            (success, pos) = decode_15(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 16) {
            bool success;
            (success, pos) = decode_16(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // MessageData.type_
    function decode_1(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 13) {
            return (false, pos);
        }

        instance.type_ = MessageType(v);

        return (true, pos);
    }

    // MessageData.fid
    function decode_2(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 v;
        (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.fid = v;

        return (true, pos);
    }

    // MessageData.timestamp
    function decode_3(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint32 v;
        (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.timestamp = v;

        return (true, pos);
    }

    // MessageData.network
    function decode_4(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 3) {
            return (false, pos);
        }

        instance.network = FarcasterNetwork(v);

        return (true, pos);
    }

    // MessageData.cast_add_body
    function decode_5(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        CastAddBody memory nestedInstance;
        (success, pos, nestedInstance) = CastAddBodyCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.cast_add_body = nestedInstance;

        return (true, pos);
    }

    // MessageData.empty_cast_remove_body
    function decode_6(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.empty_cast_remove_body = v;

        return (true, pos);
    }

    // MessageData.reaction_body
    function decode_7(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        ReactionBody memory nestedInstance;
        (success, pos, nestedInstance) = ReactionBodyCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.reaction_body = nestedInstance;

        return (true, pos);
    }

    // MessageData.empty
    function decode_8(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.empty = v;

        return (true, pos);
    }

    // MessageData.verification_add_eth_address_body
    function decode_9(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        VerificationAddEthAddressBody memory nestedInstance;
        (success, pos, nestedInstance) = VerificationAddEthAddressBodyCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.verification_add_eth_address_body = nestedInstance;

        return (true, pos);
    }

    // MessageData.empty_verification_remove_body
    function decode_10(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.empty_verification_remove_body = v;

        return (true, pos);
    }

    // MessageData.deprecated_signer_add_body
    function decode_11(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.deprecated_signer_add_body = v;

        return (true, pos);
    }

    // MessageData.user_data_body
    function decode_12(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.user_data_body = v;

        return (true, pos);
    }

    // MessageData.deprecated_signer_remove_body
    function decode_13(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.deprecated_signer_remove_body = v;

        return (true, pos);
    }

    // MessageData.link_body
    function decode_14(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        LinkBody memory nestedInstance;
        (success, pos, nestedInstance) = LinkBodyCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.link_body = nestedInstance;

        return (true, pos);
    }

    // MessageData.empty_username_proof_body
    function decode_15(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        bool v;
        (success, pos, v) = ProtobufLib.decode_bool(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == false) {
            return (false, pos);
        }

        instance.empty_username_proof_body = v;

        return (true, pos);
    }

    // MessageData.frame_action_body
    function decode_16(uint64 pos, bytes memory buf, MessageData memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        FrameActionBody memory nestedInstance;
        (success, pos, nestedInstance) = FrameActionBodyCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.frame_action_body = nestedInstance;

        return (true, pos);
    }

}

struct UserDataBody {
    UserDataType type_;
    string value;
}

library UserDataBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, UserDataBody memory) {
        // Message instance
        UserDataBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 2) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, UserDataBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // UserDataBody.type_
    function decode_1(uint64 pos, bytes memory buf, UserDataBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 6) {
            return (false, pos);
        }

        instance.type_ = UserDataType(v);

        return (true, pos);
    }

    // UserDataBody.value
    function decode_2(uint64 pos, bytes memory buf, UserDataBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.value = v;

        return (true, pos);
    }

}

struct Embed {
    string url;
    CastId cast_id;
}

library EmbedCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, Embed memory) {
        // Message instance
        Embed memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 2) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, Embed memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // Embed.url
    function decode_1(uint64 pos, bytes memory buf, Embed memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.url = v;

        return (true, pos);
    }

    // Embed.cast_id
    function decode_2(uint64 pos, bytes memory buf, Embed memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        CastId memory nestedInstance;
        (success, pos, nestedInstance) = CastIdCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.cast_id = nestedInstance;

        return (true, pos);
    }

}

struct CastAddBody {
    string embeds_deprecated;
    uint64[] mentions;
    CastId parent_cast_id;
    string text;
    uint32[] mentions_positions;
    Embed[] embeds;
    string parent_url;
}

library CastAddBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, CastAddBody memory) {
        // Message instance
        CastAddBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 7) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 4) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 5) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 6) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 7) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, CastAddBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 4) {
            bool success;
            (success, pos) = decode_4(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 5) {
            bool success;
            (success, pos) = decode_5(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 6) {
            bool success;
            (success, pos) = decode_6(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 7) {
            bool success;
            (success, pos) = decode_7(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // CastAddBody.embeds_deprecated
    function decode_1(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.embeds_deprecated = v;

        return (true, pos);
    }

    // CastAddBody.mentions
    function decode_2(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_length_delimited(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Empty packed array must be omitted
        if (len == 0) {
            return (false, pos);
        }

        uint64 initial_pos = pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos);
        }

        // Do one pass to count the number of elements
        uint64 cnt = 0;
        while (pos - initial_pos < len) {
            uint64 v;
            (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
            if (!success) {
                return (false, pos);
            }
            cnt += 1;
        }

        // Allocated memory
        instance.mentions = new uint64[](cnt);

        // Now actually parse the elements
        pos = initial_pos;
        for (uint64 i = 0; i < cnt; i++) {
            uint64 v;
            (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
            if (!success) {
                return (false, pos);
            }

            instance.mentions[i] = v;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos);
        }

        return (true, pos);
    }

    // CastAddBody.parent_cast_id
    function decode_3(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        CastId memory nestedInstance;
        (success, pos, nestedInstance) = CastIdCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.parent_cast_id = nestedInstance;

        return (true, pos);
    }

    // CastAddBody.text
    function decode_4(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.text = v;

        return (true, pos);
    }

    // CastAddBody.mentions_positions
    function decode_5(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_length_delimited(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Empty packed array must be omitted
        if (len == 0) {
            return (false, pos);
        }

        uint64 initial_pos = pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos);
        }

        // Do one pass to count the number of elements
        uint64 cnt = 0;
        while (pos - initial_pos < len) {
            uint32 v;
            (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
            if (!success) {
                return (false, pos);
            }
            cnt += 1;
        }

        // Allocated memory
        instance.mentions_positions = new uint32[](cnt);

        // Now actually parse the elements
        pos = initial_pos;
        for (uint64 i = 0; i < cnt; i++) {
            uint32 v;
            (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
            if (!success) {
                return (false, pos);
            }

            instance.mentions_positions[i] = v;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos);
        }

        return (true, pos);
    }

    // CastAddBody.embeds
    function decode_6(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 initial_pos = pos;

        // Do one pass to count the number of elements
        uint64 cnt = 0;
        while (pos < buf.length) {
            uint64 len;
            (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
            if (!success) {
                return (false, pos);
            }

            // Sanity checks
            if (pos + len < pos) {
                return (false, pos);
            }

            pos += len;
            cnt += 1;

            if (pos >= buf.length) {
                break;
            }

            // Decode next key
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos);
            }

            // Check if the field number is different
            if (field_number != 6) {
                break;
            }
        }

        // Allocated memory
        instance.embeds = new Embed[](cnt);

        // Now actually parse the elements
        pos = initial_pos;
        for (uint64 i = 0; i < cnt; i++) {
            uint64 len;
            (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
            if (!success) {
                return (false, pos);
            }

            initial_pos = pos;

            Embed memory nestedInstance;
            (success, pos, nestedInstance) = EmbedCodec.decode(pos, buf, len);
            if (!success) {
                return (false, pos);
            }

            instance.embeds[i] = nestedInstance;

            // Skip over next key, reuse len
            if (i < cnt - 1) {
                (success, pos, len) = ProtobufLib.decode_uint64(pos, buf);
                if (!success) {
                    return (false, pos);
                }
            }
        }

        return (true, pos);
    }

    // CastAddBody.parent_url
    function decode_7(uint64 pos, bytes memory buf, CastAddBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.parent_url = v;

        return (true, pos);
    }

}

struct CastRemoveBody {
    bytes target_hash;
}

library CastRemoveBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, CastRemoveBody memory) {
        // Message instance
        CastRemoveBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 1) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, CastRemoveBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // CastRemoveBody.target_hash
    function decode_1(uint64 pos, bytes memory buf, CastRemoveBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.target_hash = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.target_hash[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

}

struct CastId {
    uint64 fid;
    bytes hash_;
}

library CastIdCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, CastId memory) {
        // Message instance
        CastId memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 2) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, CastId memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // CastId.fid
    function decode_1(uint64 pos, bytes memory buf, CastId memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 v;
        (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.fid = v;

        return (true, pos);
    }

    // CastId.hash_
    function decode_2(uint64 pos, bytes memory buf, CastId memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.hash_ = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.hash_[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

}

struct ReactionBody {
    ReactionType type_;
    CastId target_cast_id;
    string target_url;
}

library ReactionBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, ReactionBody memory) {
        // Message instance
        ReactionBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 3) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, ReactionBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // ReactionBody.type_
    function decode_1(uint64 pos, bytes memory buf, ReactionBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        int32 v;
        (success, pos, v) = ProtobufLib.decode_enum(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        // Check that value is within enum range
        if (v < 0 || v > 2) {
            return (false, pos);
        }

        instance.type_ = ReactionType(v);

        return (true, pos);
    }

    // ReactionBody.target_cast_id
    function decode_2(uint64 pos, bytes memory buf, ReactionBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        CastId memory nestedInstance;
        (success, pos, nestedInstance) = CastIdCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.target_cast_id = nestedInstance;

        return (true, pos);
    }

    // ReactionBody.target_url
    function decode_3(uint64 pos, bytes memory buf, ReactionBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.target_url = v;

        return (true, pos);
    }

}

struct VerificationAddEthAddressBody {
    bytes address_;
    bytes eth_signature;
    bytes block_hash;
    uint32 verification_type;
    uint32 chain_id;
}

library VerificationAddEthAddressBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, VerificationAddEthAddressBody memory) {
        // Message instance
        VerificationAddEthAddressBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 5) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 4) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 5) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, VerificationAddEthAddressBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 4) {
            bool success;
            (success, pos) = decode_4(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 5) {
            bool success;
            (success, pos) = decode_5(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // VerificationAddEthAddressBody.address_
    function decode_1(uint64 pos, bytes memory buf, VerificationAddEthAddressBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.address_ = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.address_[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // VerificationAddEthAddressBody.eth_signature
    function decode_2(uint64 pos, bytes memory buf, VerificationAddEthAddressBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.eth_signature = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.eth_signature[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // VerificationAddEthAddressBody.block_hash
    function decode_3(uint64 pos, bytes memory buf, VerificationAddEthAddressBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.block_hash = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.block_hash[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // VerificationAddEthAddressBody.verification_type
    function decode_4(uint64 pos, bytes memory buf, VerificationAddEthAddressBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint32 v;
        (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.verification_type = v;

        return (true, pos);
    }

    // VerificationAddEthAddressBody.chain_id
    function decode_5(uint64 pos, bytes memory buf, VerificationAddEthAddressBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint32 v;
        (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.chain_id = v;

        return (true, pos);
    }

}

struct VerificationRemoveBody {
    bytes address_;
}

library VerificationRemoveBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, VerificationRemoveBody memory) {
        // Message instance
        VerificationRemoveBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 1) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, VerificationRemoveBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // VerificationRemoveBody.address_
    function decode_1(uint64 pos, bytes memory buf, VerificationRemoveBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.address_ = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.address_[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

}

struct LinkBody {
    string type_;
    uint32 displayTimestamp;
    uint64 target_fid;
}

library LinkBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, LinkBody memory) {
        // Message instance
        LinkBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 3) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, LinkBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // LinkBody.type_
    function decode_1(uint64 pos, bytes memory buf, LinkBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        string memory v;
        (success, pos, v) = ProtobufLib.decode_string(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (bytes(v).length == 0) {
            return (false, pos);
        }

        instance.type_ = v;

        return (true, pos);
    }

    // LinkBody.displayTimestamp
    function decode_2(uint64 pos, bytes memory buf, LinkBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint32 v;
        (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.displayTimestamp = v;

        return (true, pos);
    }

    // LinkBody.target_fid
    function decode_3(uint64 pos, bytes memory buf, LinkBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 v;
        (success, pos, v) = ProtobufLib.decode_uint64(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.target_fid = v;

        return (true, pos);
    }

}

struct FrameActionBody {
    bytes url;
    uint32 button_index;
    CastId cast_id;
}

library FrameActionBodyCodec {
    function decode(uint64 initial_pos, bytes memory buf, uint64 len) internal pure returns (bool, uint64, FrameActionBody memory) {
        // Message instance
        FrameActionBody memory instance;
        // Previous field number
        uint64 previous_field_number = 0;
        // Current position in the buffer
        uint64 pos = initial_pos;

        // Sanity checks
        if (pos + len < pos) {
            return (false, pos, instance);
        }

        while (pos - initial_pos < len) {
            // Decode the key (field number and wire type)
            bool success;
            uint64 field_number;
            ProtobufLib.WireType wire_type;
            (success, pos, field_number, wire_type) = ProtobufLib.decode_key(pos, buf);
            if (!success) {
                return (false, pos, instance);
            }

            // Check that the field number is within bounds
            if (field_number > 3) {
                return (false, pos, instance);
            }

            // Check that the field number of monotonically increasing
            if (field_number <= previous_field_number) {
                return (false, pos, instance);
            }

            // Check that the wire type is correct
            success = check_key(field_number, wire_type);
            if (!success) {
                return (false, pos, instance);
            }

            // Actually decode the field
            (success, pos) = decode_field(pos, buf, len, field_number, instance);
            if (!success) {
                return (false, pos, instance);
            }

            previous_field_number = field_number;
        }

        // Decoding must have consumed len bytes
        if (pos != initial_pos + len) {
            return (false, pos, instance);
        }

        return (true, pos, instance);
    }

    function check_key(uint64 field_number, ProtobufLib.WireType wire_type) internal pure returns (bool) {
        if (field_number == 1) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        if (field_number == 2) {
            return wire_type == ProtobufLib.WireType.Varint;
        }

        if (field_number == 3) {
            return wire_type == ProtobufLib.WireType.LengthDelimited;
        }

        return false;
    }

    function decode_field(uint64 initial_pos, bytes memory buf, uint64 len, uint64 field_number, FrameActionBody memory instance) internal pure returns (bool, uint64) {
        uint64 pos = initial_pos;

        if (field_number == 1) {
            bool success;
            (success, pos) = decode_1(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 2) {
            bool success;
            (success, pos) = decode_2(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        if (field_number == 3) {
            bool success;
            (success, pos) = decode_3(pos, buf, instance);
            if (!success) {
                return (false, pos);
            }

            return (true, pos);
        }

        return (false, pos);
    }

    // FrameActionBody.url
    function decode_1(uint64 pos, bytes memory buf, FrameActionBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_bytes(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        instance.url = new bytes(len);
        for (uint64 i = 0; i < len; i++) {
            instance.url[i] = buf[pos + i];
        }

        pos = pos + len;

        return (true, pos);
    }

    // FrameActionBody.button_index
    function decode_2(uint64 pos, bytes memory buf, FrameActionBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint32 v;
        (success, pos, v) = ProtobufLib.decode_uint32(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (v == 0) {
            return (false, pos);
        }

        instance.button_index = v;

        return (true, pos);
    }

    // FrameActionBody.cast_id
    function decode_3(uint64 pos, bytes memory buf, FrameActionBody memory instance) internal pure returns (bool, uint64) {
        bool success;

        uint64 len;
        (success, pos, len) = ProtobufLib.decode_embedded_message(pos, buf);
        if (!success) {
            return (false, pos);
        }

        // Default value must be omitted
        if (len == 0) {
            return (false, pos);
        }

        CastId memory nestedInstance;
        (success, pos, nestedInstance) = CastIdCodec.decode(pos, buf, len);
        if (!success) {
            return (false, pos);
        }

        instance.cast_id = nestedInstance;

        return (true, pos);
    }

}


// File contracts/MessaggeVerifier.sol

// Original license: SPDX_License_Identifier: GPL-3.0
pragma solidity ^0.8.9;

contract MessaggeVerifier {
  event MessageCastAddVerified(
    uint64 fid,
    string text,
    uint64[] mentions
  );

  event MessageReactionAddVerified(
    uint64 fid,
    ReactionType reaction_type,
    uint64 target_fid,
    bytes target_hash
  );

  event MessageFrameActionBodyVerified(
    uint64 fid,
    uint32 button_index,
    uint64 target_fid,
    bytes target_hash,
    bytes url
  );

  error InvalidSignature();
  error InvalidEncoding();
  error InvalidMessageType();

  function _verifyMessage(
    bytes32 public_key,
    bytes32 signature_r,
    bytes32 signature_s,
    bytes memory message
  ) internal pure returns(MessageData memory) {
    // Calculate Blake3 hash of FC message (first 20 bytes)
    bytes memory message_hash = Blake3.hash(message, 20);

    // Verify signature
    bool valid = Ed25519.verify(
      public_key,
      signature_r,
      signature_s,
      message_hash
    );

    if (!valid) {
      revert InvalidSignature();
    }

    (
      bool success,
      ,
      MessageData memory message_data
    ) = MessageDataCodec.decode(0, message, uint64(message.length));

    if (!success) {
      revert InvalidEncoding();
    }

    return message_data;
  }

  function verifyCastAddMessage(
    bytes32 public_key,
    bytes32 signature_r,
    bytes32 signature_s,
    bytes memory message
  ) external {
    MessageData memory message_data = _verifyMessage(
      public_key,
      signature_r,
      signature_s,
      message
    );

    if (message_data.type_ != MessageType.MESSAGE_TYPE_CAST_ADD) {
      revert InvalidMessageType();
    }

    emit MessageCastAddVerified(
      message_data.fid,
      message_data.cast_add_body.text,
      message_data.cast_add_body.mentions
    );
  }

  function verifyReactionAddMessage(
    bytes32 public_key,
    bytes32 signature_r,
    bytes32 signature_s,
    bytes memory message
  ) external {
    MessageData memory message_data = _verifyMessage(
      public_key,
      signature_r,
      signature_s,
      message
    );

    if (message_data.type_ != MessageType.MESSAGE_TYPE_REACTION_ADD) {
      revert InvalidMessageType();
    }

    emit MessageReactionAddVerified(
      message_data.fid,
      message_data.reaction_body.type_,
      message_data.reaction_body.target_cast_id.fid,
      message_data.reaction_body.target_cast_id.hash_
    );
  }

  /*
  function verifyFrameActionBodyMessage(
    bytes32 public_key,
    bytes32 signature_r,
    bytes32 signature_s,
    bytes memory message
  ) external virtual {
    MessageData memory message_data = _verifyMessage(
      public_key,
      signature_r,
      signature_s,
      message
    );

    if (message_data.type_ != MessageType.MESSAGE_TYPE_FRAME_ACTION) {
      revert InvalidMessageType();
    }

    emit MessageFrameActionBodyVerified(
      message_data.fid,
      message_data.frame_action_body.button_index,
      message_data.frame_action_body.cast_id.fid,
      message_data.frame_action_body.cast_id.hash_,
      message_data.frame_action_body.url
    );
  }
  */
}


// File contracts/utils/Enum.sol

/// @title Enum - Collection of enums
/// @author Richard Meissner - <richard@gnosis.pm>
pragma solidity ^0.8.9;

contract Enum {
    enum Operation {
        Call,
        DelegateCall
    }
}


// File contracts/utils/SignatureDecoder.sol

// Original license: SPDX_License_Identifier: LGPL-3.0-only
pragma solidity ^0.8.9;

/// @title SignatureDecoder - Decodes signatures that a encoded as bytes
/// @author Ricardo Guilherme Schmidt (Status Research & Development GmbH)
/// @author Richard Meissner - <richard@gnosis.pm>
contract SignatureDecoder {
    /// @dev Recovers address who signed the message
    /// @param messageHash operation ethereum signed message hash
    /// @param messageSignature message `txHash` signature
    /// @param pos which signature to read
    function recoverKey(bytes32 messageHash, bytes memory messageSignature, uint256 pos) internal pure returns (address) {
        uint8 v;
        bytes32 r;
        bytes32 s;
        (v, r, s) = signatureSplit(messageSignature, pos);
        return ecrecover(messageHash, v, r, s);
    }

    /// @dev divides bytes signature into `uint8 v, bytes32 r, bytes32 s`.
    /// @notice Make sure to peform a bounds check for @param pos, to avoid out of bounds access on @param signatures
    /// @param pos which signature to read. A prior bounds check of this parameter should be performed, to avoid out of bounds access
    /// @param signatures concatenated rsv signatures
    function signatureSplit(bytes memory signatures, uint256 pos) internal pure returns (uint8 v, bytes32 r, bytes32 s) {
        // The signature format is a compact form of:
        //   {bytes32 r}{bytes32 s}{uint8 v}
        // Compact means, uint8 is not padded to 32 bytes.
        // solium-disable-next-line security/no-inline-assembly
        assembly {
            let signaturePos := mul(0x41, pos)
            r := mload(add(signatures, add(signaturePos, 0x20)))
            s := mload(add(signatures, add(signaturePos, 0x40)))
            // Here we are loading the last 32 bytes, including 31 bytes
            // of 's'. There is no 'mload8' to do this.
            //
            // 'byte' is not working due to the Solidity parser, so lets
            // use the second best option, 'and'
            v := and(mload(add(signatures, add(signaturePos, 0x41))), 0xff)
        }
    }
}


// File contracts/ProposalModule.sol

// Original license: SPDX_License_Identifier: UNLICENSED
pragma solidity ^0.8.9;



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
