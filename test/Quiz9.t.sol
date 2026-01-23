// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Quiz9.sol";

contract Quiz9Test is Test {
    A9 public contractA;
    B9 public contractB;

    function setUp() public {
        contractB = new B9();
        contractA = new A9(payable(address(contractB)));
    }

    function test_TransferToEmptyContract() public {
        // TODO: What happens when foo() is called with 1 ether?
        // Does it:
        // A) Succeed - B receives 1 ether
        // B) Revert - B cannot receive ETH (no receive/fallback)

        // Uncomment the correct assertion:

        // Option A - succeeds:
        // contractA.foo{value: 1e18}();
        // assertEq(address(contractB).balance, 1e18);

        // Option B - reverts:
        // vm.expectRevert();
        // contractA.foo{value: 1e18}();

        // Default (wrong) - will fail:
        contractA.foo{value: 1e18}();
        assertEq(address(contractB).balance, 999); // wrong expected value
    }
}
