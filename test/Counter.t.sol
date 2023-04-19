// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

// Harness Contract for exposing internal functions so they can be tested
contract CounterHarness is Counter {
    function exposed_internalDecrement() external {
        internalDecrement();
    }
}

contract CounterTest is Test {
    CounterHarness public counter;

    function setUp() public {
        counter = new CounterHarness();
        counter.setNumber(0);
    }

    function test_increment_CanIncrementCounter() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_setCounter_CanSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function test_internalDecrement_CanDecrementCounter() public {
        counter.setNumber(1);
        assertEq(counter.number(), 1);

        counter.exposed_internalDecrement();
        assertEq(counter.number(), 0);
    }
}
