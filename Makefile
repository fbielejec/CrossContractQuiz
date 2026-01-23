.PHONY: test test-quiz-1 test-quiz-2 test-quiz-3 test-quiz-4 test-quiz-5 test-quiz-6 test-quiz-7 test-quiz-8 test-quiz-9 test-quiz-10 test-quiz-11

test: test-quiz-1 test-quiz-2 test-quiz-3 test-quiz-4 test-quiz-5 test-quiz-6 test-quiz-7 test-quiz-8 test-quiz-9 test-quiz-10 test-quiz-11

test-quiz-1:
	forge test --match-path test/Quiz1.t.sol -vvv

test-quiz-2:
	forge test --match-path test/Quiz2.t.sol -vvv

test-quiz-3:
	forge test --match-path test/Quiz3.t.sol -vvv

test-quiz-4:
	forge test --match-path test/Quiz4.t.sol -vvv

test-quiz-5:
	forge test --match-path test/Quiz5.t.sol -vvv

test-quiz-6:
	forge test --match-path test/Quiz6.t.sol -vvv

test-quiz-7:
	forge test --match-path test/Quiz7.t.sol -vvv

test-quiz-8:
	forge test --match-path test/Quiz8.t.sol -vvv

test-quiz-9:
	forge test --match-path test/Quiz9.t.sol -vvv

test-quiz-10:
	forge test --match-path test/Quiz10.t.sol -vvv

test-quiz-11:
	forge test --match-path test/Quiz11.t.sol -vvv
