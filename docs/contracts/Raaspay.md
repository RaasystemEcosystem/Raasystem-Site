# Raaspay Smart Contract

## Overview

`Raaspay` is the payment gateway contract of the Raasystem, enabling merchants to accept Raaskoin and other tokens for goods and services, with optional fiat settlement and automatic conversions powered by the GoldPriceOracle.

---

## Purpose

- Facilitate **crypto-to-fiat** and **crypto-to-crypto** payments.
- Enable **merchants** to accept Raaskoin seamlessly.
- Integrate with **GoldPriceOracle** for real-time conversion rates.
- Work with **Raaswallet** and **RABEX** for balance transfers and conversions.

---

## Key Features

- **Merchant Gateway:** Allows businesses to accept Raaskoin and other supported tokens.
- **Real-Time Conversion:** Uses live gold price data for fiat equivalence.
- **Auto Settlement:** Merchants can auto-convert crypto to stablecoins or fiat via backend.
- **Authorized Access:** Only authorized merchant addresses can request payment settlement.
- **Transaction Audit Trail:** All payments are recorded on-chain.

---

## Core Variables

```solidity
address public owner;
address public oracle;
mapping(address => bool) public isMerchant;
mapping(address => uint256) public merchantBalances;
