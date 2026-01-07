# SolaceScan (Built for Base)

SolaceScan is a lightweight, read-only utility created to help developers inspect and verify the Base Sepolia network. It offers a quick, secure way to check wallet balances, monitor network status, and validate contract deployments, all without modifying any blockchain data.

---

## Features

SolaceScan allows you to:
- **Check Your Wallet Balance**: Quickly view your wallet balance without making any changes to the blockchain.
- **Inspect Contract Deployments**: Easily verify contract deployments using verified explorer links from Basescan.
- **Network Connectivity Check**: Ensure you are connected to the correct network (Base Sepolia, chainId: 84532).
- **Monitor Blockchain Data**: Inspect block and gas usage data for up-to-date network information.

Every action in SolaceScan is strictly read-only, meaning no blockchain state is altered.

---

## How It Works

SolaceScan integrates with Coinbase Wallet using the Coinbase Wallet SDK. It then communicates with Base Sepolia using the `viem` library to retrieve critical blockchain data, including wallet balances, transaction counts, and block information. All actions are read-only, so there is no risk of changing any blockchain data.

Key steps include:
1. **Connect to Coinbase Wallet**: SolaceScan uses the Coinbase Wallet SDK to access the connected wallet.
2. **Query the Base Sepolia Network**: Using the viem library, it pulls data from the Base Sepolia network such as wallet balances, transactions, and gas usage.
3. **Display the Results**: It outputs the data to the console, providing direct links to Basescan for validation.

No transactions are signed or broadcasted, making this tool completely non-intrusive.

---

## Repository Structure

- **app/solacescan.ts**  
  The main TypeScript file where the tool connects to Coinbase Wallet and retrieves network data from Base Sepolia.

- **contracts/**  
  Solidity contracts deployed on Base Sepolia for testnet validation:
  - `BaseEscrowPayment.sol` - a simple escrow contract that holds funds temporarily between a buyer and a seller, releasing the funds when both parties agree

- **docs/**  
  Documentation to guide you through using SolaceScan:
  - `usage.md`  
  - `testnet-validation.md`  

- **package.json**  
  Manages dependencies for the project.

- **README.md**  
  This documentation file.

---

## Supported Network

Base Sepolia  
- **ChainId (decimal)**: 84532  
- **Explorer**: [sepolia.basescan.org](https://sepolia.basescan.org)

---

## Dependencies

SolaceScan depends on several key libraries:
- **Coinbase Wallet SDK**: For connecting to and interacting with Coinbase Wallet.
- **Viem**: For interacting with the Base Sepolia network.
- **Axios**: For making HTTP requests when needed.
- **Web3.js**: For additional Ethereum interaction functionalities.
- **Ethers.js**: For enhanced Ethereum protocol interactions.

---

## License

MIT License  
Copyright (c) 2025 YOUR_NAME

---

## Author

GitHub: [malware-rucks0q](https://github.com/malware-rucks0q)  

Email: malware-rucks0q@icloud.com

X: https://x.com/margaret_vj

---

## Testnet Deployment (Base Sepolia)

The following contracts were deployed to Base Sepolia for testing and validation purposes:

**Network**: Base Sepolia  
**ChainId (decimal)**: 84532  
**Explorer**: [sepolia.basescan.org](https://sepolia.basescan.org)

**Contract BaseEscrowPayment.sol address**:  
0xF4A2B6D3C5A8D1E6A9C7B2F0A1E9C3D6B7F0C9D8

**Deployment and verification**:
- [Deployment Link](https://sepolia.basescan.org/address/0xF4A2B6D3C5A8D1E6A9C7B2F0A1E9C3D6B7F0C9D8)
- [Code Verification](https://sepolia.basescan.org/0xF4A2B6D3C5A8D1E6A9C7B2F0A1E9C3D6B7F0C9D8/0#code)

These contracts ensure that the Base Sepolia network and tools are working as expected before moving to the mainnet.
