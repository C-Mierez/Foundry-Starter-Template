// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import {Counter} from "../../src/Counter.sol";

// Harness Contract for exposing internal functions so they can be tested
contract CounterHarness is Counter {
    function exposed_internalDecrement() external {
        internalDecrement();
    }
}
