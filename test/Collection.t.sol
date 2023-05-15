// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {WeSurvivedTheStorm} from "../src/WeSurvivedTheStorm.sol";

contract CounterTest is Test {
    WeSurvivedTheStorm public collection;
    address admin = makeAddr("admin");
    address deployer = makeAddr("deployer");

    function setUp() public {
        vm.prank(deployer);
        collection = new WeSurvivedTheStorm(admin);
    }

    function test_common() public {
        assertEq(collection.name(), "We Survived The Storm");
        assertEq(collection.symbol(), "WSTS");
        assertEq(collection.totalSupply(), 4);
        assertEq(collection.owner(), admin);
        assertEq(collection.balanceOf(admin), 4);
    }

    function test_tokenURI() public {
        assertEq(collection.tokenURI(1), "ipfs://1");
        assertEq(collection.tokenURI(2), "ipfs://2");
        assertEq(collection.tokenURI(3), "ipfs://3");
        assertEq(collection.tokenURI(4), "ipfs://4");
    }

    function test_tokenURI(uint256 id) public {
        vm.assume(id != 1 && id != 2 && id != 3 && id != 4);
        vm.expectRevert(abi.encodeWithSignature("TokenDoesNotExist()"));
        collection.tokenURI(id);
    }

    
}
