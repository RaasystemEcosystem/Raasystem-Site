# RABEX Smart Contract

## Overview

`RABEX` is the core AI-powered decentralized exchange (DEX) contract of the Raasystem. It enables automated trading of `Raaskoin`, stablecoins, and other digital assets within the Raasystem ecosystem. It integrates directly with AI systems and oracles to offer real-time pricing, arbitrage detection, and seamless market-making.

---

## Purpose

- Facilitate automated and manual trading of Raaskoin and supported tokens.
- Power dynamic order books and liquidity pools.
- Support seamless integration with AI trading engines and external data feeds.
- Serve as the backend engine for the RABEX Trading Dashboard.

---

## Key Features

- **AI Integration:** Trades are optimized through a backend AI engine.
- **Dynamic Spreads:** Bid-ask spreads adjust automatically based on market conditions.
- **Price Protection:** Includes anti-manipulation logic to protect users from price volatility.
- **Liquidity Pools:** Offers customizable pools for different token pairs.
- **Order Book:** Maintains on-chain order history and current buy/sell offers.
- **Arbitrage Guard:** Detects and mitigates arbitrage opportunities with external markets.

---

## Core Variables

```solidity
mapping(address => mapping(address => uint256)) public liquidityPool;
mapping(address => Order[]) public orderBook;
address public owner;
bool public tradingPaused;
