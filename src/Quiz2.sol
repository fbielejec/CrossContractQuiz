// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {console} from "forge-std/Test.sol";

// Quiz 2: Calling an empty address
// Question: Suppose the following code makes a call to an empty address.
// What happens? What is the content of ok and result?
// Fill in the expected values in the test file.

contract C {
    function f(address a) external returns (bool ok, bytes memory result) {
        (ok, result) = a.call("hello");

        console.log ("@OK", ok);
        console.log ("@RESULT");
        console.logBytes (result);

    }
}
