// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Variables {
    /*
    
         local
* declared inside a function
* not stored on the blockchain
         state
* declared outside a function
* stored on the blockchain

global (provides information about the blockchain)

        Constant Variables
* Constants are variables that cannot be modified.
*Their value is hard coded and using constants can save gas cost.

        Immutable Variables
* Immutable variables are like constants. 
* Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

    */
    uint32 constant COUNTRY_NUMBER = 91;
    // State Variable
    string public name = "AnyName";
    uint256 phoneNumber = 9876785241;
    uint32 immutable favnumber;
    address public immutable myAddress;

    constructor(uint32 _favnumber) {
        favnumber = _favnumber;
        myAddress = msg.sender;
    }

    function doSomething() public view {
        //Local Variable
        uint32 age = 16;

        //Example for global variable
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
