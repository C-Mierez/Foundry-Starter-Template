# Foundry Starter Template

A quick starter template with some additional setup I normally need.

## Features

### Foundry Configuration `foundry.toml`

EVM Variable Keys for:

- RPC Endpoints for Mainnet, Polygon, Arbitrum; and their respective testnets.  
- Etherscan API Keys for Mainnet, Polygon, Arbitrum; and their respective testnets.

#### Test configuration
- Default Verbosity set to `-vvv`
- Block timestamp set to `1680318000` (April 1st, 2023) instead of the unrealistic `1` default value.
- Increased amount of runs for **Fuzz and Invariant Tests** to `500`. 

### Makefile

File with different `make` shortcuts for commonly used commands in Foundry.

### Subdirectories
- [Openzeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)
- [Solmate](https://github.com/transmissions11/solmate)
- [Foundry-DevOps](https://github.com/ChainAccelOrg/foundry-devops)
- [PRB-Test](https://github.com/PaulRBerg/prb-test)

#### `remappings.txt`
- `@openzeppelin`
- `@solmate`
- `@foundry-devops`

### Packages
- Prettier

### Other

[Slither](https://github.com/crytic/slither) Configuration file `slither.config.json`

## Requirements
- [yarn](https://yarnpkg.com/) For installing dependencies.
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
- Install packages
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

# Credit

This template is built from my own personal use and other repos I've encountered, but its structure is heavily influenced by [foundry-starter-kit](https://github.com/smartcontractkit/foundry-starter-kit) from SmartContractKit 🔥