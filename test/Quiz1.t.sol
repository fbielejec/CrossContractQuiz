// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz1.sol";

contract Quiz1Test is Test {
    A public contractA;
    B public contractB;

    event Success();

    function setUp() public {
        contractA = new A();
        contractB = new B();
    }

    function test_CrossContractCallEmitsSuccess() public {
        vm.expectEmit(true, true, true, true, address(contractB));
        emit Success();

        contractA.f(address(contractB));
    }
}
