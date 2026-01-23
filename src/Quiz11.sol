// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 11:
// Question: What change is needed to make this code compile? (Or does it compile with no issues?)
// TODO: Fix the compilation error

contract C11 {
    function f(address a) external returns (bool, bytes memory) {
        return a.call(abi.encode("foo()"));
    }
}
