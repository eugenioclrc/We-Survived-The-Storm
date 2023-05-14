// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {ERC721} from "solady/tokens/ERC721.sol";

contract WeSurvivedTheStorm is ERC721 {
    uint256 public constant totalSupply = 4;
    address public immutable owner;
    uint256 constant private BPS = 100_00;
    uint256 constant public COMISSION = 5_00;
    
    function name() public pure override returns (string memory) {
        return "We Survived The Storm";
    }

    function symbol() public pure override returns (string memory) {
        return "WSTS";
    }

    constructor() ERC721() {
        owner = msg.sender;
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 4);
    }

    /// @notice ERC2981, Returns the royalty amount for a given NFT and sale price
    function royaltyInfo(uint256, uint256 salePrice) public view returns (address, uint256) {
        // not checking the token id to save gas, its virtually impossible to send a wrong token id
        // also all tokens have the same royalty percentage
        uint256 royaltyAmount = (salePrice * COMISSION) / BPS;
        return (owner, royaltyAmount);
    }
    
    function tokenURI(uint256 id) public pure override returns (string memory) {
        if(id == 1) {
            return "ipfs://1";
        } else if(id == 2) {
            return "ipfs://2";
        } else if(id == 3) {
            return "ipfs://3";
        } else if(id == 4) {
            return "ipfs://4";
        } else {
            revert TokenDoesNotExist();
        }
    }

    function contractURI() external pure returns (string memory) {
        return "ipfs://";
    }
}
