# GoldPriceOracle Smart Contract

## Overview

The `GoldPriceOracle` is a critical component of the Raasystem ecosystem, designed to provide reliable and secure gold price data on-chain for the `Raaskoin` smart contract. It enables real-time, verifiable pricing mechanisms to support dynamic conversions and trading functionalities.

## Contract Purpose

- Stores and updates the **live gold price** on the XDC Network.
- Provides `Raaskoin` and related contracts with accurate and auditable price data.
- Is updated by a secure **off-chain oracle** fetching from Chainlink on Ethereum Mainnet.

## Key Features

- **Price Feeds:** Maintains a reliable feed of the current gold price (in USD per ounce).
- **Access Control:** Only the designated Oracle Operator (owner or relayer) can update the price.
- **Event Logging:** Emits `PriceUpdated` events to ensure traceability and transparency.

## Core Variables

```solidity
uint256 public goldPrice;
address public owner;
