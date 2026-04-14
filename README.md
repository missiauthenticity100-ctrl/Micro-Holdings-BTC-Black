# Micro-Holdings-BTC-Black
BTC-Black algorithmic coin
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BTCBlack is ERC20 {
    constructor() ERC20("Bitcoin Black", "BTC-B") {
        _mint(msg.sender, 21_000_000 * 10**18);
    }
}
