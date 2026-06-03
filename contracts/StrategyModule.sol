// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Strategy Module
contract StrategyModule {
    address public agent;
    mapping(bytes32 => bool) public activeStrategies;

    constructor(address _agent) {
        agent = _agent;
    }

    function activateStrategy(bytes32 strategyId) external {
        require(msg.sender == agent, "Only agent");
        activeStrategies[strategyId] = true;
    }

    function deactivateStrategy(bytes32 strategyId) external {
        require(msg.sender == agent, "Only agent");
        activeStrategies[strategyId] = false;
    }
}