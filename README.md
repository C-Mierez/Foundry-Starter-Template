# Foundry Starter Template

A quick starter template with some additional setup I normally need.

## Features

### Foundry Configuration

- RPC Endpoints for Mainnet, Polygon, Arbitrum; and their respective testnets.  
- Etherscan API Keys for Mainnet, Polygon, Arbitrum; and their respective testnets.

#### Test configuration
- Default Verbosity set to `-vvv`
- Block timestamp set to `1681830000` instead of the unrealistic `1` default
- Increased amount of runs for **Fuzz and Invariant Tests** to 500. 

### Makefile

File with different `make` shortcuts for commonly used commands in Foundry.

### Subdirectories
- [Openzeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)
- [Solmate](https://github.com/transmissions11/solmate)
- [Foundry-DevOps](https://github.com/ChainAccelOrg/foundry-devops)

#### `remappings.txt`
- `@openzeppelin`
- `@solmate`
- `@foundry-devops`

### Packages
- Prettier

### Other

[Slither](https://github.com/crytic/slither) Configuration file `slither.config.json`

## Requirements

- [make](https://linux.die.net/man/1/make) For running command shortcuts.
- [Foundry](https://github.com/foundry-rs/foundry) ... 😄

## Quickstart

- Clone this template
    ```bash
    git clone https://github.com/C-Mierez/Foundry-Starter-Template.git
    ```
- Create a `.env` file according to `.env.example`

### With `make`
- Run `make` 😄
    ```bash
    make
    ```
- Run tests
    ```bash
    make test
    ```
### Without `make`
- Install submodule dependencies
  ```bash
  forge install
  ```
- Run tests
  ```bash
  forge test
  ```
## Tests

## Scripts

# Credit

This template is built from my own personal use and other repos I've encountered, but its structure is heavily influenced by [foundry-starter-kit](https://github.com/smartcontractkit/foundry-starter-kit) from SmartContractKit 🔥