// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract Mappings {
    mapping(address => uint256) public myMap;

    function get(address _address) public view returns (uint256) {
        return myMap[_address];
    }

    function set(address _address, uint256 _i) public {
        myMap[_address] = _i;
    }

    function remove(address _address) public {
        delete myMap[_address];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1, uint256 _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint256 _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }
}
