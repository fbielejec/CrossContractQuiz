// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 5: Understanding low-level call return values
// Question: What does f return and why?

contract A5 {
    function f(address b) external returns (bool) {
        // b is the address of contract B
        (bool ok, bytes memory result) = b.call(abi.encodeWithSignature("foo()"));
        return ok;
    }
}

contract B5 {
    function foo() external returns (bool) {
        return false;
    }
}
