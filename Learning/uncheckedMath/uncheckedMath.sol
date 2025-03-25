// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract UncheckedMath {
    // lets have 2 function one is with unchecked and other one normal doing the same operation of adding numbers

    function UsingUnchecked(
        uint256 x,
        uint256 y
    ) public pure returns (uint256) {
        // 22103 gas
        unchecked {
            return x + y;
        }
    }
    function WithoutUsingUnchecked(
        uint256 x,
        uint256 y
    ) public pure returns (uint256) {
        // 22291 gas
        return x + y;
    }
}
