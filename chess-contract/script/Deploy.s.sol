// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/ChessGame.sol";

contract Deploy is Script {
    function run() external {
        vm.startBroadcast();
        new ChessGame();
        vm.stopBroadcast();
    }
}
