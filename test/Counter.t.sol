// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Can also use ForgeStd's Test
// import "forge-std/Test.sol";
// import {PRBTest} from "@prb/test/PRBTest.sol";
import {TestContext} from "./shared/TestContext.t.sol";

contract CounterTest is TestContext {
    function setUp() public {
        setUpContextV1();
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
