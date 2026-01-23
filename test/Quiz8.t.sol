// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz8.sol";

contract Quiz8Test is Test {
    A8 public contractA;
    B8 public contractB;

    function setUp() public {
        contractA = new A8();
        contractB = new B8();
    }

    function test_FCalledWithZero() public {
        // TODO: What is the outcome when f is called with address of B and 0?
        // Does it:
        // A) Return "hello"
        // B) Return "bye" (catch block catches division by zero)
        // C) Revert (division by zero is not caught)

        // Uncomment the correct assertion:

        // Option A - returns "hello":
        // string memory result = contractA.f(contractB, 0);
        // assertEq(result, "hello");

        // Option B - returns "bye":
        // string memory result = contractA.f(contractB, 0);
        // assertEq(result, "bye");

        // Option C - reverts:
        // vm.expectRevert();
        // contractA.f(contractB, 0);

        // Default (wrong) - will fail:
        string memory result = contractA.f(contractB, 0);
        assertEq(result, "this will fail");
    }
}
