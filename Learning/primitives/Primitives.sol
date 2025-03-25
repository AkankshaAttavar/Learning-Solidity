// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Primitives {
    //variable
    uint256 public age = 10;
    int32 public score = -10;
    bool isKid = true;
    bool public defaultBoo; // false
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */

    bytes1 a = 0xb5; //  [10110101]

    // b * 16^1 + 5 * 16^0 = 0xb5

    bytes1 b = 0x56; //  [01010110]

    //  5 * 16^1 + 6 * 16^0 = 0xb5
}
