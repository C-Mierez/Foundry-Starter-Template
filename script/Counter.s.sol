// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Counter.sol";
import "./Utils.s.sol";
import "forge-std/console.sol";

contract DeployCounter is Script {
    Utils public utils;

    function run() public {
        utils = new Utils();
        uint256 initVal = utils.config();

        vm.startBroadcast();

        Counter counter = new Counter();

        console.log(counter.number());

        counter.setNumber(initVal);

        console.log(counter.number());

        vm.stopBroadcast();
    }
}
