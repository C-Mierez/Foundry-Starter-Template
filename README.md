# Foundry Starter Template

A starter template built from common needs I've encountered regularly while working with Foundry.

## Features

### Foundry Configuration `foundry.toml`

#### EVM Variable Keys for:

- RPC Endpoints for Mainnet, Polygon, Arbitrum; and their respective testnets.  
- Etherscan API Keys for Mainnet, Polygon, Arbitrum; and their respective testnets.

#### Test Configuration:
- Default Verbosity set to `-vvv`
- Block timestamp set to `1680318000` (April 1st, 2023) instead of the unrealistic `1` default value.
- Increased amount of runs for **Fuzz and Invariant Tests** to `500`. 

### Dependencies

| Subdirectory  | Remapping  |
|---|---|
| [Openzeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)  | `@openzeppelin`  |
| [Solmate](https://github.com/transmissions11/solmate) | `@solmate`  |
| [Foundry-DevOps](https://github.com/ChainAccelOrg/foundry-devops) | `@foundry-devops`  |
| [PRB-Test](https://github.com/PaulRBerg/prb-test) | `@prb/test`  |

| Package | Files |
|---|---|
| Prettier | `.prettierrc` `.prettierignore` |
| Solhint | `.solhint.json` |
| Slither | `slither.config.json` |

### Makefile

File with different `make` shortcuts for commonly used commands in Foundry.

## Requirements
- [yarn](https://yarnpkg.com/) For installing dependencies.
- [make](https://linux.die.net/man/1/make) For running command shortcuts.
- [Foundry](https://github.com/foundry-rs/foundry) ... 😄

## Quickstart

- Clone this template
    ```bash
    forge init --template C-Mierez/Foundry-Starter-Template
    ```
- Create a `.env` file and populate as per `.env.example`

- Install packages (Prettier, Solhint, ...)
  ```bash
  yarn
  ```

- Run tests
  ```bash
  forge test
  ```

## Scripts

  Run scripts locally with
  ```bash
  forge script script/Counter.s.sol 
  ```
  Or in a network with
  ```
  forge script script/Counter.s.sol --rpc-url ${GOERLI_RPC_URL} --private-key ${PRIVATE_KEY} --broadcast --verify --etherscan-api-key ${ETHERSCAN_API_KEY}  -vvv
  ```

  > 👀 Shortcuts for scripts can be added to the `Makefile` for convenience.
---

> ## Acknowledgement
>
> This template is built from my own personal needs and from repos I've encountered, but its structure is heavily influenced by both [foundry-starter-kit](https://github.com/smartcontractkit/foundry-starter-kit) from SmartContractKit 🔥 and [foundry-template](https://github.com/PaulRBerg/foundry-template) from [PaulRBerg](https://twitter.com/PaulRBerg) 🔥