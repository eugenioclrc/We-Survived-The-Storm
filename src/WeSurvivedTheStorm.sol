// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {ERC721} from "solady/tokens/ERC721.sol";

contract WeSurvivedTheStorm is ERC721 {
    uint256 public constant totalSupply = 4;
    address public immutable owner;

    constructor() ERC721() {
        owner = msg.sender;
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 4);
    }

    function name() public pure override returns (string memory) {
        return "We Survived The Storm";
    }

    function symbol() public pure override returns (string memory) {
        return "WSTS";
    }
    
    function tokenURI(uint256 id) public pure override returns (string memory) {
        if(id == 1) {
            return "ipfs://";
        } else if(id == 2) {
            return "ipfs://";
        } else if(id == 3) {
            return "ipfs://";
        } else if(id == 4) {
            return "ipfs://";
        } else {
            revert TokenDoesNotExist();
        }
    }
}
