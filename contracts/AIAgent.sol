// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title AI On-Chain Agent (Basic)
contract AIAgent {
    address public owner;
    mapping(bytes32 => bool) public executedStrategies;

    event StrategyExecuted(bytes32 indexed strategyId, address indexed executor);

    constructor() {
        owner = msg.sender;
    }

    function executeStrategy(bytes32 strategyId) external {
        require(msg.sender == owner, "Only owner");
        require(!executedStrategies[strategyId], "Already executed");
        executedStrategies[strategyId] = true;
        emit StrategyExecuted(strategyId, msg.sender);
    }
}