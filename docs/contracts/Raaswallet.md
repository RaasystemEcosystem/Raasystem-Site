# Raaswallet Smart Contract

## Overview

`Raaswallet` is the non-custodial wallet contract powering user interactions across the Raasystem ecosystem. It enables secure storage, transfers, and seamless interaction with other smart contracts like RABEX, Raaskoin, and Raaspay.

---

## Purpose

- Allow users to deposit and manage Raaskoin, stablecoins, and other assets.
- Enable secure on-chain payments and transfers.
- Serve as a user’s primary gateway into the Raasystem.
- Link with Raaspay for merchant settlements and fiat integration.

---

## Key Features

- **Non-Custodial:** Users control their private keys and assets at all times.
- **Multi-Asset Support:** Compatible with Raaskoin, Raastoken, stablecoins (USDT, USDC), and more.
- **Transaction History:** On-chain records of all transfers and interactions.
- **AI Wallet Assistance:** Optional off-chain AI assistant integration for spending insights.
- **Raasystem Integration:** Fully interoperable with RABEX, Raaspay, and GoldPriceOracle.

---

## Core Variables

```solidity
mapping(address => mapping(address => uint256)) public balances;
address public owner;
mapping(address => bool) public authorizedContracts;
