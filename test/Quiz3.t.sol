// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz3.sol";

contract Quiz3Test is Test {
    A3 public contractA;
    B3 public contractB;

    function setUp() public {
        contractA = new A3();
        contractB = new B3();
    }

    function test_SetBToOne() public {
        // Verify initial state
        assertEq(contractB.b(), 0);

        // Call A.foo with B's address
        contractA.foo(address(contractB));

        // B.b should now be 1
        assertEq(contractB.b(), 1);
    }
}
