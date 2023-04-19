// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

// See https://book.getfoundry.sh/forge/fork-testing#forking-cheatcodes
contract CounterForkTest is Test {
    uint256 fork;
    uint256 forkBlock = 12000000; // Use a set block to cache RPC responses and have deterministic execution

    Counter public counter;

    function setUp() public {
        // Create and Select a fork
        //? It is possible to create multiple forks and select each on each test by using `vm.selectFork(fork)`
        fork = vm.createSelectFork(vm.rpcUrl("mainnet"), forkBlock);

        counter = new Counter();
        counter.setNumber(0);
    }

    function test_increment_CanIncrementCounter() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }
}
