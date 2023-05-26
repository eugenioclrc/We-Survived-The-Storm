# We-Survived-The-Storm
Moise x David Maxwell: We Survived The Storm

## Introduction

"We Survived The Storm" is a groundbreaking NFT collection that fuses the talents of musician Moise and multi-talented artist and creative director David Maxwell. The collection features four sped up versions of songs that paint a vivid and emotive world, featuring the sounds of Lee Scratch Perry, Raspberry Tea, Paranoia, and Astral Planes from the also titled album “We Survived The Storm, Vol. 2”.

## Collection Overview

The NFT collection consists of 4 unique NFTs, each representing a different song from the album "We Survived The Storm, Vol. 2". These NFTs are minted using the ERC721 standard and have unique attributes and images associated with them. The collection symbol is "WSTS". 

### NFT Details

1. [LEE SCRATCH PERRY](https://cloudflare-ipfs.com/ipfs/QmWsXedSjjAMFsmcqjiSCvDzw54Y6Y14YCkG8eCRSedgrW)
2. [RASPBERRY TEA](https://cloudflare-ipfs.com/ipfs/QmebwZYDtfgnqdoyCvgcB2Cr4K73dHjjWi1nYdKZ1zusJH)
3. [PARANOIA](https://cloudflare-ipfs.com/ipfs/QmRXb3ega7nw7PhXZ9hkXt433dqH4dy4MGbeVGMRrdJTxD)
4. [ASTRAL PLANES](https://cloudflare-ipfs.com/ipfs/QmYUrFiqsUoEpbyG6Tbb1bxM5N3rJfCfctyoxBTRnTmUzd)

## Contract Code Overview

This collection is deployed on Ethereum network. The contract is written in Solidity and uses the ERC721 solady implementation for minting NFTs. The contract has the `royaltyInfo` function that returns the royalty amount for a given NFT and sale price. Also, each NFT has its unique `tokenURI` stored on IPFS, that points to the metadata of each token.

## Contract Source Code

The source code of the contract is provided in this repository. Check out `WeSurvivedTheStorm.sol` for the full contract code.

```solidity
// Contract code snippet
contract WeSurvivedTheStorm is ERC721 {
    uint256 public constant totalSupply = 4;
    // More code ...
}
```

## License
The project is licensed under the terms of the MIT license. This means you have unlimited permission to copy, distribute, and modify the text.


