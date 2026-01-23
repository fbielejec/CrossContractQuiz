// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz10.sol";

contract Quiz10Test is Test {
    A10 public contractA;
    B10 public contractB;
    C10 public contractC;

    function setUp() public {
        contractC = new C10();
        contractB = new B10(contractC);
        contractA = new A10(contractB);
    }

    function test_StorageValuesAfterF() public {
        // Call A.f()
        contractA.f();

        // TODO: What are the values of a and b after A.f() is called?
        uint256 expectedA = 999; // TODO: fix this
        uint256 expectedB = 999; // TODO: fix this

        assertEq(contractA.a(), expectedA, "a has wrong value");
        assertEq(contractB.b(), expectedB, "b has wrong value");
    }
}
