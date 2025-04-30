# GoldPriceOracle Contract

## Overview
Feeds real-time gold prices into the Raaskoin system for pricing, payments, and trading.

## XDCScan Contract Address
[https://xdc.blocksscan.io/address/xdc1234...ORACLE](https://xdc.blocksscan.io/address/xdc1234...ORACLE)

## Verified Functions
- `updatePrice(uint256 price)` – Admin-only push function
- `getLatestPrice()` – Returns the latest stored price

## Deployment Date
March 2025

## Security Notes
- Only authorized off-chain service can push prices
- Protected from front-running and replay attacks