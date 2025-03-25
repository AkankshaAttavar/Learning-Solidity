// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Enums {
    //Defining an enum
    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    // Declaring an enum
    Status public status;

    function get() public view returns (Status) {
        return status;
    }
    function set(Status _status) public {
        status = _status;
    }

    function Shipped() public {
        status = Status.Shipped;
    }
    function reset() public {
        delete status;
    }
}

/* 
To import enum to another contract

pragma solidity ^0.8.26;

import "./EnumDeclaration.sol";

contract Enum {
    Status public status;
}

*/
