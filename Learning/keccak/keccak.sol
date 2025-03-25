// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Keccak {
    //variables
    uint256 private password;
    string public name;
    bytes32 public savedPasword;

    function setPassword(
        uint256 _password,
        string memory _name
    ) public returns (bytes32) {
        savedPasword = keccak256(abi.encodePacked(_password, _name));
        return savedPasword;
    }

    function checkPassword(
        uint256 inputPassword,
        string memory _name
    ) public view returns (bool) {
        bytes32 TypedPassword;
        TypedPassword = keccak256(abi.encodePacked(inputPassword, _name));
        return TypedPassword == savedPasword;
    }
}
