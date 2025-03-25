// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AssemblyVariable {
    //Language used for assembly is called as yul

    function yul_let() public pure returns (uint256 z) {
        assembly {
            let x := 123
            z := 456
        }
    }
}

contract AssemblyCondition {
    function yul_if(uint256 x) public pure returns (uint256 z) {
        assembly {
            if lt(x, 10) {
                z := 99
            }
        }
    }

    function yul_switch(uint256 x) public pure returns (uint256 z) {
        assembly {
            switch x
            case 1 {
                z := 1
            }
            case 2 {
                z := 2
            }
            default {
                z := 0
            }
        }
    }
}

contract AssemblyLoop {
    function yul_for_loop() public pure returns (uint256 z) {
        assembly {
            for {
                let i := 0
            } lt(i, 10) {
                i := add(i, 1)
            } {
                z := add(z, 1)
            }
        }
    }

    function yul_while_loop() public pure returns (uint256 z) {
        assembly {
            let i := 0
            for {

            } lt(i, 5) {

            } {
                i := add(i, 1)
                z := add(z, 1)
            }
        }
    }
}

contract AssemblyError {
    function yul_revert(uint256 x) public pure {
        assembly {
            //checking if x is greater than 1
            if gt(x, 1) {
                //revert(p, s)
                //0, 0 → No data is returned (empty revert)
                revert(0, 0)
            }
        }
    }
}

contract AssemblyMath {
    function yul_addition(
        uint256 x,
        uint256 y
    ) public pure returns (uint256 z) {
        assembly {
            z := add(x, y)
            if lt(z, x) {
                revert(0, 0)
            }
        }
    }

    function yul_multiplication(
        uint256 x,
        uint256 y
    ) public pure returns (uint256 z) {
        assembly {
            switch x
            case 0 {
                z := 0
            }
            default {
                z := mul(x, y)
                if iszero(eq(div(z, x), y)) {
                    revert(0, 0)
                }
            }
        }
    }
}
