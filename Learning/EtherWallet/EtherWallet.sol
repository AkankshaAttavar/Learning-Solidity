// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EtherWallet {
    /* 
    Anyone can send eth
    Only the owner can withdraw
    */
    error NotOwner(address owner);
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    modifier isOwner() {
        if (msg.sender != owner) {
            revert NotOwner(msg.sender);
        }
        _;
    }
    receive() external payable {}

    /* Not necessary !!
    function sendEth(address from, uint256 _amount) public payable {
        //whatever payer is sending send it to contatract
        require(msg.value > 0, "Send some ETH!");
    }
*/

    function withdraw() public isOwner {
        //Whatever is in the contract let it be sent to owner
        payable(owner).transfer(address(this).balance);
    }
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
