# 🛒 Basic Digital Marketplace Smart Contract

A simple Solidity smart contract that enables users to **list** and **purchase digital items** using **ERC-20 tokens**. This project demonstrates a minimal decentralized e-commerce flow using token-based payments.

---

## 🚀 Features

- List digital products (e.g., NFTs, files, assets)
- Purchase items using ERC-20 tokens (DAI, USDT, custom tokens)
- Stores seller, buyer, and price on-chain
- Events emitted for frontend or dApp integration

---

## 🧠 Tech Stack

- **Solidity** (v0.8.x)
- **Ethereum / EVM-compatible chain**
- **ERC-20 token interface**
- **Remix IDE** (for deployment)
- **GitHub** (for version control)

---

## 📄 Contract Location

- `contracts/DigitalMarketplace.sol`

---

## 🔧 Functions Overview

### ✅ `listItem(string memory _name, uint256 _price)`
List an item with a name and price (in token's smallest units).

### ✅ `purchaseItem(uint256 _itemId)`
Purchase an item using approved ERC-20 tokens.

---

## 📦 Deployment Info

- ✅ **Deployed via**: Remix IDE
- 🧾 **Transaction Hash (Contract Deployment)**:  
  [`0xc308ccfb0e4735ffc1f6cf6eb2e82623937ceae1cef456cb24e6ea94cd718773`](https://etherscan.io/tx/0xc308ccfb0e4735ffc1f6cf6eb2e82623937ceae1cef456cb24e6ea94cd718773)

> You can view the contract deployment and execution details using this hash on the block explorer of your deployment network.

---

## 📜 License

This project is licensed under the **MIT License**.  
Feel free to fork, improve, or use in your own projects.

---

## 🙌 Author

**Tousif Azim**  
GitHub: [@Tousif18](https://github.com/Tousif18)  
LinkedIn: [tousifazim](https://www.linkedin.com/in/tousifazim)

---

## 💡 Future Improvements

- Add royalty & commission systems
- Support listing with IPFS metadata
- Add refund/dispute logic
- Integrate with frontend (React + Ethers.js)

---

### ⭐️ Star this repo if you find it useful!
