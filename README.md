# usdc-directory-dex-contracts

Core smart contracts powering liquidity and swapping for the USDC Directory DEX on Arc Testnet.

## Overview

This repository contains the contracts used for the DEX functionality in [usdc.directory](https://usdc.directory).  
USDC serves as the native gas token on Arc Testnet.

## Deployed Contracts (Arc Testnet)

**Chain ID:** 5042002

| Contract     | Address                                      | Description |
|--------------|----------------------------------------------|-------------|
| Factory      | `0x11...6d3A2`                               | Creates liquidity pairs |
| Router       | `0xd1f489eF0Cd899e203c3Eee7B79aBF25895F5920` | Main router for `addLiquidityETH`, swaps, and liquidity removal |

**Native Gas Token (WETH equivalent):**  
`0x3600000000000000000000000000000000000000` (Arc USDC)

## Purpose

These contracts enable users to:
- Add and remove liquidity to token pairs
- Execute token swaps
- Use USDC seamlessly as both trading asset and gas token

This deployment provides a stable foundation for the USDC Directory DEX on Arc Testnet.

## Repository Contents

- `ArcFactory.sol` — Liquidity pair factory
- `ArcRouter.sol` — Main router for liquidity and swaps
- `ArcPair.sol` — Base pair contract (created automatically by the Factory)

## License

MIT License

---

Maintained for the USDC Directory project.
