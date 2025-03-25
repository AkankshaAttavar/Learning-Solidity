// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FirstApp {
    //Variable
    uint256 public count = 0;
    function Inc() external {
        count = count + 1;
    }
    function Dec() external {
        count = count - 1;
    }

    function get() public view returns (uint256) {
        return count;
    }
}
