// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {WeSurvivedTheStorm} from "../src/WeSurvivedTheStorm.sol";

contract DeployScript is Script {
    function setUp() public {}

    function run() public returns (address collection) {
        vm.broadcast();
        address owner = 0xdd4B140eAb54A593d5a23248abe12551644c0892;
        collection = address(new WeSurvivedTheStorm(owner));
    }
}

// deploy on testnet using
// forge script script/Deploy.s.sol --broadcast --rpc-url https://rpc.ankr.com/eth_goerli --private-key <private-key>