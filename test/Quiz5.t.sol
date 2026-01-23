// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz5.sol";

contract Quiz5Test is Test {
    A5 public contractA;
    B5 public contractB;

    function setUp() public {
        contractA = new A5();
        contractB = new B5();
    }

    function test_WhatDoesFReturn() public {
        bool result = contractA.f(address(contractB));

        // TODO: What does f return? true or false?
        bool expected = true; // TODO: fix this

        assertEq(result, expected);
    }
}
