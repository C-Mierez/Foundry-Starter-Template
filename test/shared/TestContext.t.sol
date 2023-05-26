// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {PRBTest} from "@prb/test/PRBTest.sol";
import {console2} from "forge-std/console2.sol";
import {MockERC20} from "../../src/mock/MockERC20.sol";
import {CounterHarness} from "../harness/CounterHarness.sol";

contract TestContext is PRBTest {
    uint256 constant DEFAULT_ERC20_SUPPLY = 1_000_000 ether;

    // Change these names with more sematic ones as per the business logic
    MockERC20 public myERC20;
    MockERC20 public otherERC20;

    CounterHarness public counter;

    address deployer;
    address constant alice = address(111);
    address constant bob = address(222);
    address constant charlie = address(333);
    address constant dave = address(444);

    /* ---------------------------------- SetUp --------------------------------- */

    function setUpContextV1() public {
        // Add different deployments
        createContextV1();
    }

    // Add other initial setUps here

    /* ---------------------------- Context Creation ---------------------------- */
    function createContextV1() public {
        deployer = address(this);

        // Deploy contracts
        myERC20 = new MockERC20(DEFAULT_ERC20_SUPPLY, "MyERC20", "MY");
        otherERC20 = new MockERC20(DEFAULT_ERC20_SUPPLY, "OtherERC20", "OTHER");

        counter = new CounterHarness();

        // Set up initial state
        vm.prank(alice);
        myERC20.test_mint(2 ether);

        vm.prank(bob);
        myERC20.approve(alice, 1 ether);

        counter.setNumber(0);
    }

    /* ----------------------------- ERC20 Approval ----------------------------- */
    function ERC20Approve(address user, address erc20, address to) public {
        vm.prank(user);
        MockERC20(erc20).approve(to, type(uint256).max);
    }

    function ERC20Approve(
        address user,
        address erc20,
        address to,
        uint256 amount
    ) public {
        vm.prank(user);
        MockERC20(erc20).approve(to, amount);
    }

    function ERC20ApproveAll(
        address user,
        address[] memory erc20s,
        address to
    ) public {
        for (uint256 i; i < erc20s.length; ++i) {
            ERC20Approve(user, erc20s[i], to);
        }
    }

    /* ---------------------------------- Print --------------------------------- */
    function PrintUserETHBalance(
        address user
    ) public returns (uint256 balance) {
        balance = user.balance;
        console2.log("ETH balance: %s for Address %s", balance, user);
    }

    function PrintUserBalance(
        address user
    ) public returns (uint256 eth, uint256 _myERC20, uint256 _otherERC20) {
        eth = PrintUserETHBalance(user);
        _myERC20 = MockERC20(myERC20).balanceOf(user);
        _otherERC20 = MockERC20(otherERC20).balanceOf(user);

        // Print all on-use ERC20 balances
        console2.log("MyERC20 balance: %s for Address %s", _myERC20, user);
        console2.log(
            "OtherERC20 balance: %s for Address %s",
            _otherERC20,
            user
        );
    }

    /* ------------------------- Context-Specific Utils ------------------------- */

    /* --------------------------- Parameter Encoding --------------------------- */
}
