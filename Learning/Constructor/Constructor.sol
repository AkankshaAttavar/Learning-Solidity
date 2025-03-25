// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract A {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}
contract B {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

//contract C is A("Input to A"), B("Input to B"){}

contract C is A, B {
    // Pass the parameters here in the constructor,
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) A(_name) B(_text) {}
}
