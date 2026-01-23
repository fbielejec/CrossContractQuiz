// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 3: Cross-contract call with arguments
// Question: What code should go in place of `""` so that B.b becomes 1?

contract A3 {
    function foo(address b) external {

      bytes memory data = abi.encodeWithSignature("setb(uint256)",  1);
      b.call(data); // TODO: replace "" with the correct calldata
    }
}

contract B3 {
    uint256 public b = 0;

    function setb(uint256 newValue) external {
        b = newValue;
    }
}
