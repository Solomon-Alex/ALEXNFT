// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "forge-std/Script.sol";
import "../src/ALEXNFT.sol";

contract ALEXNFTScript is Script {
    function run() external {
        // Get the private key from environment variables
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        // Start broadcasting transactions
        vm.startBroadcast(deployerPrivateKey);

        // NFT parameters
        string memory name = "ALEX NFT";
        string memory symbol = "ALEX";
        
        // SVG image encoded in base64
        string memory svgBase64 = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj4KICA8cmVjdCB3aWR0aD0iNTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzAwN2JmZiIvPgogIDx0ZXh0IHg9IjUwJSIgeT0iNTAlIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iNDAiIGZpbGw9IndoaXRlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBkeT0iLjNlbSI+QUxFWCBORlQ8L3RleHQ+Cjwvc3ZnPg==";

        // Deploy the NFT contract - use a different variable name
        ALEXNFT nftContract = new ALEXNFT(name, symbol, svgBase64);

        // Mint an NFT to the deployer
        nftContract.mintNFT();

        // Log the contract address
        console.log("ALEXNFT deployed to:", address(nftContract));
        address nftTokenAddress = address(nftContract);
        console.log("NFT Token Address:", nftTokenAddress);

        string memory nftMemory = nftContract.tokenURI(1);
        console.log("NFT Token URI:", nftMemory);

        // Stop broadcasting transactions
        vm.stopBroadcast();
    }
}