-include .env

all: clean remove install update build 

# Clean forge artifacts and cache
clean	:; forge clean

# Remove modules
remove	:; rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && git add . && git commit -m "modules"

# Install the modules
install	:; forge install
	
# Update all dependencies
update	:; forge update

build	:; forge build

test	:; forge test

snapshot:; forge snapshot

format	:; prettier --write src/**/*.sol && prettier --write src/*.sol

slither :; slither ./src 

yarn: 	yarn 

# Add shortcuts here
deploy-mumbai	:; @forge script script/${contract}.s.sol --rpc-url ${MUMBAI_RPC_URL} --private-key ${PRIVATE_KEY} --broadcast --verify --etherscan-api-key ${POLYGONSCAN_API_KEY} -vvvv