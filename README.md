# Foundry Starter Template

A quick starter template with some additional setup I normally need.

## Features

### Foundry Configuration

- RPC Endpoints for Mainnet, Polygon, Arbitrum; and their respective testnets.  
- Etherscan API Keys for Mainnet, Polygon, Arbitrum; and their respective testnets.

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

### Dependencies
- Prettier


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