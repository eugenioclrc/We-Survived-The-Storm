// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {WeSurvivedTheStorm} from "../src/WeSurvivedTheStorm.sol";

contract CollectionTest is Test {
    WeSurvivedTheStorm public collection;
    address admin = makeAddr("admin");
    address deployer = makeAddr("deployer");

    function setUp() public {
        vm.prank(deployer);
        collection = new WeSurvivedTheStorm(admin);
    }

    function invariant_collectionInvariants() public {
        assertEq(collection.name(), "We Survived The Storm");
        assertEq(collection.symbol(), "WSTS");
        assertEq(collection.totalSupply(), 4);
        assertEq(collection.owner(), admin);
    }

    function test_common() public {
        assertEq(collection.name(), "We Survived The Storm");
        assertEq(collection.symbol(), "WSTS");
        assertEq(collection.totalSupply(), 4);
        assertEq(collection.owner(), admin);
        assertEq(collection.balanceOf(admin), 4);
    }

    function test_URIs() public {
        assertEq(collection.tokenURI(1), "ipfs://QmbfJhUBSnHEySw4rXJVRb6p4T4xTLeMEXwvaAa4QX1Qiz");
        assertEq(collection.tokenURI(2), "ipfs://QmbCvopd9RbLgRhqeAGEZuWXtYMGKTdyHPsyy4F1AnjTqS");
        assertEq(collection.tokenURI(3), "ipfs://QmQHeZBEr1Tkh6qJ2xRuUAM561f4ymbmXC4R1ZPkymu5BH");
        assertEq(collection.tokenURI(4), "ipfs://Qmejd7QZYVtFR4SUJjQd7PtzVqQumsHsPuo8VZ5uFWJRbV");
        assertEq(collection.contractURI(), "ipfs://QmPdKkpv8JPu1xBymm3iKHCRbqcQJntxkFLaerUoPFwDCp");
    }

    function test_tokenURI(uint256 id) public {
        vm.assume(id != 1 && id != 2 && id != 3 && id != 4);
        vm.expectRevert(abi.encodeWithSignature("TokenDoesNotExist()"));
        collection.tokenURI(id);
    }
}
