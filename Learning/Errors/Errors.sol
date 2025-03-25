// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Errors {
    uint256 balance = 10;
    uint256 withdrawAmount = 121;
    uint32 public i;
    function testRequier(uint32 _i) public pure {
        require(_i > 10, "I should be greater than 10");
    }

    function testRevert(uint _i) public pure {
        if (_i < 10) {
            revert("Value is lesser than 10");
        }
    }
    uint256 public num;
    function testAssert() public view {
        assert(num == 0);
    }
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);
    function checkMininumBalance(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}
