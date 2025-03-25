// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Functions {
    function returnMany() public pure returns (uint256, bool, string memory) {
        return (25, true, "Marry");
    }

    function returnWithValues()
        public
        pure
        returns (uint32 x, uint32 y, uint32 z)
    {
        x = 32;
        y = 23;
        z = 867;
    }

    function returnWithAnotherFunction()
        public
        pure
        returns (uint256, bool, string memory, uint32, int32)
    {
        (uint256 i, bool j, string memory k) = returnMany();
        (uint32 x, int32 y) = (12, -19);
        return (i, j, k, x, y);
    }
}
