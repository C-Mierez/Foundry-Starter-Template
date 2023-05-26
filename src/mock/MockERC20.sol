// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    constructor(
        uint256 _amount,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) {
        _mint(msg.sender, _amount);
    }

    // Test function for minting tokens
    function test_mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }
}
