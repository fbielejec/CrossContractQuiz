// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 10: Revert propagation through call chains
// Question: What are the values of storage variables a and b after A.f() is called?

contract A10 {
    uint256 public a = 0;
    B10 b;

    constructor(B10 _b) {
        b = _b;
    }

    function f() external {
        (bool ok, bytes memory result) = address(b).call(abi.encodeCall(B10.foo, ()));
        a = 1;
    }
}

contract B10 {
    uint256 public b = 0;
    C10 c;

    constructor(C10 _c) {
        c = _c;
    }

    function foo() external {
        c.bar();
        b = 1;
    }
}

contract C10 {
    uint256 c = 0;

    function bar() external {
        revert();
    }
}
