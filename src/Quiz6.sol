// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 6: Returning data from a cross-contract call
// Question: What code should go in f() so that it returns the same string that B.foo returns?

contract A6 {
    address public b;

    constructor(address _b) {
        b = _b;
    }

    function f() external returns (string memory) {
        // TODO: your code here
        return "";
    }
}

contract B6 {
    function foo() external pure returns (string memory) {
        return "success!";
    }
}
