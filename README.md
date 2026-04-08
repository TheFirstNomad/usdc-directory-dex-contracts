# usdc-directory-dex-contracts

Core smart contracts for liquidity and swapping in the USDC Directory DEX.

## Overview

This repository contains the deployed smart contracts for the DEX functionality on **Arc Testnet**, enabling users to add/remove liquidity and perform token swaps using USDC as the native gas token.

## Deployed Contracts (Arc Testnet)

**Chain ID:** 5042002

| Contract       | Address                                      | Description |
|----------------|----------------------------------------------|-------------|
| Factory        | `0x11...6d3A2`                               | Creates liquidity pairs |
| Router         | `0xd1f489eF0Cd899e203c3Eee7B79aBF25895F5920` | Handles liquidity provision (`addLiquidityETH`), swaps, and removal |

**Native Token (WETH equivalent):**  
`0x3600000000000000000000000000000000000000` (Arc USDC)

## Purpose

These contracts power the liquidity features in [usdc.directory](https://usdc.directory), allowing merchants and users to:
- Add and remove liquidity to token pairs
- Execute token swaps
- Use USDC seamlessly as both trading asset and gas token

This deployment resolves previous router limitations on Arc Testnet.

## Repository Structure

- `ArcFactory.sol` — Liquidity pair factory
- `ArcRouter.sol` — Main router for liquidity and swaps
- `ArcPair.sol` — Base pair contract (created automatically by Factory)

## License

MIT License

---

Maintained for the USDC Directory project.
