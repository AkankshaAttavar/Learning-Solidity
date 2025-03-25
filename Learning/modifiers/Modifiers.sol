// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Modifier {
    uint256 number;
    address public user;
    uint32 age;
    bool public locked;
    uint256 x;
    constructor() {
        user = msg.sender;
    }
    modifier onlyuser() {
        require(user == msg.sender, "The user is not the sender");
        _;
    }

    // Modifiers can take inputs. This modifier checks that the
    // address passed in is not the zero address.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }
    function changeOwner(
        address _newOwner
    ) public onlyuser validAddress(_newOwner) {
        user = _newOwner;
    }

    // Modifiers can be called before and / or after a function.
    // This modifier prevents a function from being called while
    // it is still executing.
    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}
