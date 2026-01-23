// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 9: Transfer to a contract without receive/fallback
// Question: What happens after f is called with a value of 1e18?

contract A9 {
    address payable b; // address of contract B

    constructor(address payable _b) {
        b = _b;
    }

    function foo() external payable {
        b.transfer(1e18);
    }
}

contract B9 {

}
