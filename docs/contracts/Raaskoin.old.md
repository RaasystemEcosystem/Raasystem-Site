# Raaskoin Smart Contract

## Overview
Raaskoin is a gold-pegged cryptocurrency operating on the XDC Network, acting as the central unit of value across the Raasystem ecosystem.

## XDCScan Contract Address
[https://xdc.blocksscan.io/address/xdc1234...RAASKOIN](https://xdc.blocksscan.io/address/xdc1234...RAASKOIN)

## Verified Functions
- `mint(address, amount)` – Mints Raaskoin based on gold price from the oracle.
- `burn(amount)` – Burns tokens to reduce supply.
- `transfer(address, amount)` – Standard ERC-20 transfer.

## Oracle Integration
Reads live gold prices from the GoldPriceOracle contract.

## Deployment Date
March 2025

## Security Notes
- Verified on XDCScan
- Follows ERC-20 standard
- Protected with role-based access control