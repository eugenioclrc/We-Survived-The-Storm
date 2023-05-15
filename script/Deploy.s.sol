// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {WeSurvivedTheStorm} from "../src/WeSurvivedTheStorm.sol";

contract DeployScript is Script {
    function setUp() public {}

    function run() public returns (address collection) {
        vm.broadcast();
        // @todo setup a collection owner wallet
        // collection = address(new WeSurvivedTheStorm());
    }
}
