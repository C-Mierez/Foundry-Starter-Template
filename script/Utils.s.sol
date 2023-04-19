// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";

contract Utils is Script {
    struct ExampleConfig {
        uint256 initialValue;
    }

    ExampleConfig public config;

    constructor() {
        // Could add conditionals here to return different configs based on the current network
        config = ExampleConfig(10);
    }
}
