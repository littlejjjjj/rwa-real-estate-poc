Jovian Tan (littlejjjjj)
Builder — Web3 • RWA • Futures • Automation • Fintech

🔗 GitHub: https://github.com/littlejjjjj

🔗 LinkedIn: https://www.linkedin.com/in/joviantan/

📍 Based in Malaysia (Building globally)


# Real Estate RWA Tokenization & Settlement Platform (PoC)

A technical Proof-of-Concept demonstrating how real-world real estate assets can be tokenized into fractional ownership on-chain and settled through an escrow-based closing workflow.

This project showcases the mechanics required for blockchain-based property transactions, including tokenization, settlement logic, compliance points, and off-chain data integration.

---

## 🏗️ System Overview

This PoC explores how blockchain primitives can modernize real estate transactions by enabling:

✔ Fractional ownership issuance  
✔ On-chain escrow and conditional settlement  
✔ Commission & fee distribution  
✔ Tokenized secondary trading pathways  
✔ Seamless integration with DID/KYC & MLS data APIs (future)  

The architecture is designed to be compatible with both institutional and retail settlement models.

---

## 🧱 Architecture

                 ┌─────────────────────────────┐
                 │ Real Property (Off-chain)    │
                 └──────────────┬──────────────┘
                                │
                  Legal Mapping / Title Trust / SPV
                                │
                 ┌──────────────▼──────────────┐
                 │   Tokenization Layer        │
                 │  (ERC-1155 Fractional)      │
                 └──────────────┬──────────────┘
                                │
                       Fractional Tokens
                                │
                 ┌──────────────▼──────────────┐
                 │ Escrow & Closing Layer      │
                 │ (Smart Contract Settlement) │
                 └──────────────┬──────────────┘
                                │
           ┌────────────────────┼─────────────────────┐
           ▼                    ▼                     ▼
     Buyer Funds →         Seller Payout →     Broker Commissions →
     Refund Logic           Platform Fees       Fraction Holders (optional)



---

## 🧩 Components

| Layer | Description |
|---|---|
| **Tokenization** | ERC-1155 representing fractional units of a property |
| **Escrow** | Holds buyer funds until legal closing |
| **Settlement** | Distributes proceeds to Seller / Brokers / Platform / Holders |
| **Compliance** | DID/KYC + jurisdiction gating (planned) |
| **Data Feeds** | MLS / appraisal oracle integration (planned) |

---

## 🛠 Technology Stack

| Category | Tools |
|---|---|
| Language | Solidity (0.8.20) |
| Framework | Hardhat v2 (Ethers.js v5) |
| Standards | ERC-1155 (OpenZeppelin) |
| Blockchain | EVM (Local Hardhat Node) |
| Deployment | Hardhat Toolbox |
| Future | React / Next.js (Marketplace UI), WalletConnect |

---

## 📦 Installation & Setup

```bash
git clone https://github.com/littlejjjjj/rwa-real-estate-poc
cd rwa-real-estate-poc
npm install
