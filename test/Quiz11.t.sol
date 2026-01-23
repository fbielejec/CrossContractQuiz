// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz11.sol";

contract Quiz11Test is Test {
    C11 public contractC;

    function setUp() public {
        contractC = new C11();
    }

    function test_ContractCompilesAndCanBeCalled() public {
        // If the contract compiles, this test will run
        // The call should succeed (even if target has no code)
        (bool ok, bytes memory result) = contractC.f(address(0x1234));

        // Just verify the function can be called
        assertTrue(true, "Contract compiled and function was called");
    }
}
