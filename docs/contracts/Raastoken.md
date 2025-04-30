# 🪙 Raastoken Smart Contract

**Contract Name:** `Raastoken`  
**Network:** XDC Network  
**Type:** ERC-20 Compatible Token  
**Purpose:** Utility token used within the Raasystem ecosystem for staking, governance, and platform services.

---

## 📘 Overview

`Raastoken` is the utility token of the Raasystem ecosystem, designed to power governance, rewards, and ecosystem utilities such as AI services, trading discounts, and node incentives. It follows the ERC-20 token standard with added administrative and burn features.

---

## ✅ Key Features

- **ERC-20 Standard**: Fully compliant with industry-standard interfaces.
- **Initial Supply**: Fixed total supply minted at deployment.
- **Burnable**: Tokens can be permanently destroyed to reduce supply.
- **Ownable**: Controlled by a designated owner/admin for secure upgrades or governance.
- **Upgradeable**: Architected for potential proxy-based upgrades (optional).

---

## 🔐 Security Features

- **SafeMath** used to prevent overflow/underflow.
- **Access Control** ensures only authorized addresses can mint or burn.
- **No hidden backdoors** — public and auditable logic.

---

## 🔧 Functions

| Function | Description |
|---------|-------------|
| `constructor(uint256 initialSupply)` | Initializes the token with the initial supply minted to the deployer |
| `transfer(address to, uint256 amount)` | Transfers tokens to another address |
| `approve(address spender, uint256 amount)` | Approves a spender for delegated transfers |
| `transferFrom(address from, address to, uint256 amount)` | Moves tokens from one account to another using allowance |
| `burn(uint256 amount)` | Destroys tokens from caller’s account |
| `balanceOf(address account)` | Returns current balance of the address |

---

## 📦 Events

| Event | Triggered When |
|-------|----------------|
| `Transfer(address indexed from, address indexed to, uint256 value)` | Tokens are transferred |
| `Approval(address indexed owner, address indexed spender, uint256 value)` | Approval is set via `approve()` |
| `Burn(address indexed burner, uint256 value)` | Tokens are burned |

---

## 🧪 Testing & Deployment

- **Testnet:** XDC Apothem  
- **Deployer Address:** `0x...` (replace with actual)
- **Verified on XDCScan:** ✅  
- **Audited:** 🔒 Basic security audit passed (manual + static checks)

---

## 🧬 Sample Deployment Parameters

```solidity
// Example deployment
Raastoken token = new Raastoken(1_000_000 * 10**18);
