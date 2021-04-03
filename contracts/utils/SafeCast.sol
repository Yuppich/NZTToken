// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

library SafeCast {
    function toUint96(uint256 _a) internal pure returns (uint96) {
        require(_a <= 2 ** 96 - 1, "cast uint96 overflow");
        return uint96(_a);
    }
}