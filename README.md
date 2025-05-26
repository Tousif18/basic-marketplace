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
- **GitHub** (for code versioning)

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

- ✅ Contract deployed on: *EVM-compatible network (e.g., Ethereum testnet / Remix VM)*
- 🧾 **Transaction Hash** (initial deployment):  
