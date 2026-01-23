# Solidity Cross-Contract Call Quizzes

A collection of interactive quizzes designed to test your understanding of cross-contract calls in Solidity. Each quiz presents a scenario involving contract interactions and challenges you to predict the behavior or complete the implementation.

*Created by [RareSkills](https://rareskills.io/) - The Web3 education platform trusted by industry-leading developers and auditors.*

## Overview

This repository contains 11 quizzes covering various aspects of cross-contract calls:

- **Quiz 1-3**: Basic cross-contract calls using `call()` and `abi.encodeWithSignature()`
- **Quiz 4**: Internal contract calls using `this`
- **Quiz 5**: Understanding return values from cross-contract calls
- **Quiz 6**: Implementing cross-contract calls to retrieve data
- **Quiz 7**: Error handling with try/catch blocks and empty addresses
- **Quiz 8**: Division by zero and exception handling in try/catch
- **Quiz 9**: ETH transfers to contracts without receive/fallback functions
- **Quiz 10**: Understanding transaction rollbacks and state changes
- **Quiz 11**: Contract compilation and basic call functionality

## Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/) installed on your system

### Installation

```shell
git clone <repository-url>
cd <repository-name>
forge install
```

## Usage

### Run All Tests

```shell
make test
```

### Run Individual Quiz Tests

```shell
make test-quiz-1    # Test Quiz 1
make test-quiz-2    # Test Quiz 2
# ... and so on for quizzes 3-11
```

Or run individual tests directly:

```shell
forge test --match-path test/Quiz1.t.sol -vvv
forge test --match-path test/Quiz2.t.sol -vvv
# etc.
```

### Build Contracts

```shell
forge build
```

## How to Use the Quizzes

1. **Examine the contracts** in `src/QuizN.sol` to understand the scenario
2. **Look for TODO comments** indicating what needs to be predicted or implemented
3. **Check the corresponding test** in `test/QuizN.t.sol` to see what behavior is expected
4. **Make your predictions** or implement the missing code
5. **Run the test** to verify your understanding
6. **Use verbose output** (`-vvv`) to see detailed execution traces

## Quiz Topics

- Low-level calls (`call()`, `delegatecall()`)
- ABI encoding (`abi.encodeWithSignature()`, `abi.encodeCall()`)
- Error handling and transaction rollbacks
- Contract-to-contract interactions
- ETH transfers between contracts
- Try/catch exception handling
- Understanding when calls succeed vs. revert

## Further Resources

[RareSkills](https://rareskills.io/) creates high quality educational content for the Web3 industry.

Check out more resources at [RareSkills GitHub](https://github.com/rareSkills/).
