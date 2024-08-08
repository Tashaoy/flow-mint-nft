# NFT contract
This project contains a NFT contract that inherits the NFT implementation contract for the Flow blockchain.

## Description
This is a Project Built on Flow, the NFT resource defines a unique digital asset with properties name, favorite food, and lucky number. the project also defines a collection resource for managing collection of NFTs, allowing users to deposit, withdraw and view their NFTs, the project also defines minter resource which creates new NFTs with specified properties, the project contains events emitted for contract initialization, NFT withdrawals, and deposits.
### Structure
- Contracts : It contains the CryptoPoops.cdc contract and it also contains the NonFungibleToken.cdc contract
- Script: This contains the Read NFT script to read the newly minted NFT
- Transactions : This folder contains the create collection.cdc transaction to set up the account, it also contains the deposit NFT.cdc transaction to mint the NFT
### Execution
- Deploy the NonFungibleToken.cdc contract
- Deploy the CryptoPoops.cdc contract
- Run the CreateCollection.cdc transaction to create a new collection
- Run the DepositNFT.cdc transaction to mint a new NFT and deposit it into the newly created collection
- Run the ReadNFT script to view the metadata

 ## Author
 Joy Owoloko

 ## License
 This project is licensed under the MIT License
  


