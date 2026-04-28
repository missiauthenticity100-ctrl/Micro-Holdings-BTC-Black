// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IGrokchainOracle {
    function getBTCPrice() external view returns (uint256); // e.g. price * 1e8
}

contract GrokchainOracleConsumer {
    IGrokchainOracle public oracle;
    uint256 public lastBTCPrice;
    uint256 public lastUpdateTime;
    address public owner;

    event PriceUpdated(uint256 price, uint256 timestamp);

    constructor(address _oracleAddress) {
        owner = msg.sender;
        oracle = IGrokchainOracle(_oracleAddress);
    }

    function updatePrice() external {
        require(msg.sender == owner, "Only owner");
        lastBTCPrice = oracle.getBTCPrice();
        lastUpdateTime = block.timestamp;
        emit PriceUpdated(lastBTCPrice, lastUpdateTime);
    }

    function getLatestPrice() external view returns (uint256) {
        return lastBTCPrice;
    }
}
