// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 1: Cross-contract call using low-level .call()
// Question: What code needs to go in place of `""` to make the event `Success` get emitted?
// Assume `a` contains the address of `B`.

contract A {
    function f(address a) external {
        (bool ok, ) = a.call(""); // TODO: replace "" with the correct calldata
        require(ok);
    }
}

contract B {
    event Success();

    function foo() external {
        emit Success();
    }
}
