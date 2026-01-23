// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 8: Try/catch and where errors are caught
// Question: f is called with the address of B and 0. What is the outcome?

contract A8 {
    function f(B8 b, uint256 x) external view returns (string memory) {
        try b.foo() {
            1 / x;
            return "hello";
        } catch {
            return "bye";
        }
    }
}

contract B8 {
    function foo() external pure returns (string memory) {
        return "foo";
    }
}
