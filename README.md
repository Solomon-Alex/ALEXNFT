# ALEXNFT 🎨

A fully on-chain NFT collection built with Solidity and Foundry. This project features SVG artwork stored directly on the Ethereum blockchain, ensuring true decentralization and permanence. No IPFS, no external hosting - just pure, permanent digital art.

![Solidity](https://img.shields.io/badge/Solidity-0.8.30-blue)
![Foundry](https://img.shields.io/badge/Foundry-Latest-orange)
![License](https://img.shields.io/badge/License-MIT-green)

## 📋 Overview

ALEXNFT is an ERC-721 compliant NFT contract specifically designed for the Tech Crush Web3 Builder Cohort. Each NFT features unique on-chain SVG artwork with metadata generated and stored entirely on the blockchain.

### ✨ Key Features

- ✅ **Fully On-Chain**: SVG artwork and metadata stored directly in the smart contract
- ✅ **ERC-721 Standard**: Compatible with all major NFT marketplaces (OpenSea, Rarible, etc.)
- ✅ **Base64 Encoded**: Token URIs return complete data URIs viewable in any browser
- ✅ **Limited Supply**: Maximum of 100 NFTs to ensure scarcity
- ✅ **Gas Optimized**: Efficient storage and minting process
- ✅ **Updatable Base URI**: Flexibility to update the base SVG if needed
- ✅ **No Dependencies**: Zero reliance on external servers, IPFS, or centralized storage

## 🚀 Quick Start


## 🎨 SVG Artwork

The project includes several SVG designs in the `imagess/` directory. To use your own artwork:

1. Create or design your SVG file
2. Convert it to base64 using online tools or:
   ```bash
   base64 -i your-image.svg
   ```
3. Prepend with data URI scheme:
   ```
   data:image/svg+xml;base64,YOUR_BASE64_STRING
   ```
4. Use in deployment script or `setURL()` function

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Copyright (c) 2025 Solomon-Alex

## 📞 Support & Community

- **Issues**: [GitHub Issues](https://github.com/Solomon-Alex/ALEXNFT/issues)
- **Discussions**: [GitHub Discussions](https://github.com/Solomon-Alex/ALEXNFT/discussions)
- **Tech Crush Cohort**: Join our Web3 Builder community

## 🙏 Acknowledgments

- **Tech Crush Cohort** - Web3 Builder program
- **OpenZeppelin** - Secure smart contract libraries
- **Foundry Team** - Excellent development tools
- **Ethereum Community** - Continued innovation and support

## 🗺️ Roadmap

- [x] Basic ERC-721 implementation
- [x] On-chain SVG storage
- [x] Deployment scripts
- [x] Comprehensive testing
- [ ] Whitelist minting phase
- [ ] Metadata enhancements
- [ ] Marketplace integration
- [ ] Community governance features

---

**Built with ❤️ for the Tech Crush Web3 Builder Cohort**

*For the latest updates and support, visit our [GitHub repository](https://github.com/Solomon-Alex/ALEXNFT)*
