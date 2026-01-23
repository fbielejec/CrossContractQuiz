// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz4.sol";

contract Quiz4Test is Test {
    C4 public contractC;

    event Success();

    function setUp() public {
        contractC = new C4();
    }

    function test_FCallsFoo() public {
        // Expect the Success event to be emitted from contract C
        vm.expectEmit(true, true, true, true, address(contractC));
        emit Success();

        // Call f() which should internally call foo()
        contractC.f();
    }
}
