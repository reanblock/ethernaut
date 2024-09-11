// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/levels/Fallback.sol";

/*
    Solution script for the Ethernaut Level 1: Fallout

    forge script script/Fallback.s.sol:FallbackScript --rpc-url sepolia --private-key $PKEY --broadcast
*/

contract FallbackScript is Test {
    Fallback level1 = Fallback(payable(0xbEdEfE3a6f165002E45c25F2106d1967673b3921));

    function run() external {
        vm.startBroadcast();

        console.log("Current Owner: ", level1.owner());

        // level1.contribute{value: 1 wei}(); // call the contribute function with some ether/wei
        // level1.getContribution(); // get the contribution for our user to make sure its updated
        // address(level1).transfer(1 wei); // make a transfer call to trigger the receive function and become the new owner
        level1.owner(); // check who is the new owner

        vm.stopBroadcast();
    }
}