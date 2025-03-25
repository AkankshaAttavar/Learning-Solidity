// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Payable {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external payable {}

    function withdraw() public {
        // get the amount of Ether stored in this contract
        uint256 amount = address(this).balance;

        // send all Ether to owner
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }
    // do not use transfer
    function sendToSomeone(address payable _to, uint256 amount) public payable {
        if (msg.sender.balance > amount) {
            _to.transfer(amount);
        } else {
            revert("Not enought eth");
        }
    }
    // use call with re entrancy gaurd
    function transfer(address payable _to, uint256 _amount) public {
        // Note that "to" is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}
