// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract A {
    //variables
    uint256 number;

    constructor(address name, uint256 age) {
        number = age;
        name = msg.sender;
    }
}

contract B {
    A[] public person;

    function craetePeople(address name, uint256 _number) public {
        A a = new A(name, _number);
        person.push(a);
    }
}
