// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array {
    //There are several ways to initialize a array
    uint256[] public arr1;
    uint256[] public arr2 = [1, 2, 3, 4];

    // Fixed sized array, all elements initialize to 0
    uint256[10] public fixedSizeArray;

    function get(uint256 i) public view returns (uint256) {
        return arr1[i];
    }

    function getArray() public view returns (uint256[] memory) {
        return arr1;
    }

    function addToArray(uint256 i) public {
        arr1.push(i);
    }
    function removeFromLast() public {
        arr1.pop();
    }
    function getLength() public view returns (uint256) {
        return arr1.length;
    }

    function removeEleFromIndex(uint256 index) public {
        delete arr1[index];
        // remove(index); during testing
    }

    function examples() external pure {
        // create a nested array in memory
        // b = [[1, 2, 3], [4, 5, 6]]
        uint256[][] memory b = new uint256[][](2);
        for (uint256 i = 0; i < b.length; i++) {
            b[i] = new uint256[](3);
        }
        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = 6;
    }
}
