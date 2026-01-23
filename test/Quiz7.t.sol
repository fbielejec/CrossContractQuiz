// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz7.sol";

contract Quiz7Test is Test {
    C7 public contractC;

    function setUp() public {
        contractC = new C7();
    }

    function test_CallToEmptyAddressWithTryCatch() public {
        // Create an empty address (no code deployed)
        address emptyAddress = address(0x1234);

        // Verify the address has no code
        assertEq(emptyAddress.code.length, 0);

        // TODO: What happens when f is called with an empty address?
        // Does it:
        // A) Return "" (empty string from try block)
        // B) Return "failure" (from catch block)
        // C) Revert entirely (try/catch doesn't help)

        // Uncomment the correct assertion:

        // Option A - returns empty string:
        // string memory result = contractC.f(IA(emptyAddress));
        // assertEq(result, "");

        // Option B - returns "failure":
        /* string memory result = contractC.f(IA(emptyAddress)); */
        /* assertEq(result, "failure"); */

        // Option C - reverts entirely:
        vm.expectRevert();
        contractC.f(IA(emptyAddress));

        // Default (wrong) - will fail:
        /* string memory result = contractC.f(IA(emptyAddress)); */
        /* assertEq(result, "this will fail"); */
    }
}
