// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz6.sol";

contract Quiz6Test is Test {
    A6 public contractA;
    B6 public contractB;

    function setUp() public {
        contractB = new B6();
        contractA = new A6(address(contractB));
    }

    function test_FReturnsSuccessString() public {
        string memory result = contractA.f();

        assertEq(result, "success!");
    }
}
