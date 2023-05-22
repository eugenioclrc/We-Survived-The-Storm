// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {ERC721} from "solady/tokens/ERC721.sol";

contract WeSurvivedTheStorm is ERC721 {
    uint256 public constant totalSupply = 4;
    address public immutable owner;
    uint256 constant private BPS = 100_00;
    uint256 constant public COMISSION = 5_00;
    
    string public constant description = "Introducing 'We Survived The Storm', a groundbreaking NFT collection that fuses the talents of musician Moise and multi-talented artist and creative director David Maxwell. The collection features four sped-up versions of songs that paint a vivid and vibrant world, featuring the sounds of Lee Scratch Perry, Raspberry Tea, Paranoia, and Astral Planes from the also-titled album 'We Survived The Storm, Vol. 2'.";
    
    function name() public pure override returns (string memory) {
        return "We Survived The Storm";
    }

    function symbol() public pure override returns (string memory) {
        return "WSTS";
    }

    constructor(address _owner) ERC721() {
        owner = _owner;
        _mint(_owner, 1);
        tokenDescriptions[1] = "The first song in the collection from “We Survived The Storm” The inspiration behind this piece and the music came from the natural escape that sports can provide for people through their day-to-day lives. As we get caught up in work, relationships, and our passions, keeping a healthy lifestyle and finding balance is essential. In this image, the sport of choice is basketball.";
        _mint(_owner, 2);
        tokenDescriptions[2] = "The second song in the collection from “We Survived The Storm” The inspiration behind this piece and the music came from the natural nourishment that fruits can provide for people through their day-to-day lives. As we get caught up in work, relationships, and our passions, we must keep a healthy lifestyle and find balance in the foods we consume. In this image, the fruit of choice is raspberry.";
        _mint(_owner, 3);
        tokenDescriptions[3] = "The third song in the collection from “We Survived The Storm” The inspiration behind this piece and the music came from the pursuit of taking risks and decisions that people make daily. As we get caught up in work, relationships, and our passions, we must keep pursuing our dreams no matter how far out they may be. In this image, characters are jumping in parachutes through this stormy foreground.";
        _mint(_owner, 4);
        tokenDescriptions[4] = "The fourth song in the collection from “We Survived The Storm” The inspiration behind this piece and the music came from the feeling of having your back against the wall, and it’s up to you to keep pushing to get back up on your feet. As we get caught up in work, relationships, and our passions, it is essential to not let yourself ever get too down, surround yourself with people who believe in you, and continue to be resilient when times get tough. This image has a paper plane shaped like a heart soaring across the sky.";
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
