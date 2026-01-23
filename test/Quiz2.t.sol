// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz2.sol";

contract Quiz2Test is Test {
    C public contractC;

    function setUp() public {
        contractC = new C();
    }

    function test_CallToEmptyAddress() public {
        address emptyAddress = address(0x1234);

        // Verify the address has no code
        assertEq(emptyAddress.code.length, 0);

        (bool ok, bytes memory result) = contractC.f(emptyAddress);

        // TODO: What are the expected values of ok and result?
        bool expectedOk = true; // TODO: fix this
        uint256 expectedResultLength = 0x0; // TODO: fix this

        assertEq(ok, expectedOk);
        assertEq(result.length, expectedResultLength);
    }
}
