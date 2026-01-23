// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Quiz 7: Calling an empty address through an interface with try/catch
// Question: The following code makes a call to an empty contract. What happens?

interface IA {
    function foo() external returns (string memory);
}

contract C7 {
    // a is an empty address
    function f(IA a) external returns (string memory) {

      /* EXPLANATION
         The code will **revert** (not return "failure") because:
         - The low-level call to the empty address succeeds
         - But the ABI decoding of the return value fails
         - **ABI decoding failures are not caught by try/catch blocks** - they happen at a lower level than external call failures */

        try a.foo() returns (string memory s) {
            return s;
        } catch {
            return "failure";
        }
    }
}
