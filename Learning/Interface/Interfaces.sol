// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Interface definition
interface ICalculator {
    function add(uint256 a, uint256 b) external pure returns (uint256);
    function subtract(uint256 a, uint256 b) external pure returns (uint256);
}

// Contract that implements the interface
contract Calculator is ICalculator {
    // Add two numbers
    function add(
        uint256 a,
        uint256 b
    ) external pure override returns (uint256) {
        return a + b;
    }

    // Subtract two numbers
    function subtract(
        uint256 a,
        uint256 b
    ) external pure override returns (uint256) {
        return a - b;
    }
}

// Contract that calls the Calculator through the interface
contract Caller {
    // Function to use the Calculator's add function
    function useAdd(
        address _calculator,
        uint256 a,
        uint256 b
    ) public pure returns (uint256) {
        return ICalculator(_calculator).add(a, b);
    }

    // Function to use the Calculator's subtract function
    function useSubtract(
        address _calculator,
        uint256 a,
        uint256 b
    ) public pure returns (uint256) {
        return ICalculator(_calculator).subtract(a, b);
    }
}
