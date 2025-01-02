-include .env

# This target builds the project
build:; forge build
# This target deploys to Sepolia
deploy-sepolia:; forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

            