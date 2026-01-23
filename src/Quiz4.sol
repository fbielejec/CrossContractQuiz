// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 4: Calling an external function from within the same contract
// Question: What code should go in f() so that C.foo gets called?

contract C4 {
    event Success();

    function foo() external {
        emit Success();
    }

    function f() external {
        // TODO: your code here
    }
}
