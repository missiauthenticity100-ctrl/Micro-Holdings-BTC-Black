// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BTCProvidence is ERC20 {
    constructor() ERC20("Bitcoin Providence", "BTC-Pro") {
        _mint(msg.sender, 84_000_000 * 10**18);
    }
