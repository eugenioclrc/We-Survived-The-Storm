// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {WeSurvivedTheStorm} from "../src/WeSurvivedTheStorm.sol";

contract CounterTest is Test {
    WeSurvivedTheStorm public collection;
    address admin = makeAddr("admin");

    function setUp() public {
        vm.prank(admin);
        collection = new WeSurvivedTheStorm();
    }

    
}
