# usdc-directory-dex-contracts

Core smart contracts for liquidity provision and token swapping in the USDC Directory DEX.

## Overview

This repository contains the contracts used for the DEX features on **Arc Testnet**, enabling users to add/remove liquidity and perform swaps with USDC as the native gas token.

## Deployed Contracts (Arc Testnet)

**Chain ID:** 5042002

| Contract     | Address                                      | Description |
|--------------|----------------------------------------------|-------------|
| Factory      | `0x11...6d3A2`                               | Liquidity pair factory |
| Router       | `0xd1f489eF0Cd899e203c3Eee7B79aBF25895F5920` | Main router for `addLiquidityETH`, swaps, and liquidity removal |

**Native Gas Token (WETH equivalent):**  
`0x3600000000000000000000000000000000000000` (Arc USDC)

## Purpose

These contracts power the liquidity and swap functionality in [usdc.directory](https://usdc.directory).

## Repository Contents

- `ArcFactory.sol`
- `ArcRouter.sol`
- `ArcPair.sol`

## License

MIT License

---

Maintained for the USDC Directory project.
