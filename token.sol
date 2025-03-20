// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InteractionLogger {

    // Event to log interactions
    event InteractionLogged(address indexed user, uint256 timestamp);

    // Function to log an interaction
    function logInteraction() public {
        emit InteractionLogged(msg.sender, block.timestamp);
    }

    // Optionally, you can have a function to retrieve the latest timestamp of an interaction
    function getLastInteractionTimestamp() public view returns (uint256) {
        return block.timestamp;
    }
}
