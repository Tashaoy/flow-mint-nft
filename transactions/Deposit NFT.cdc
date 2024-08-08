import CryptoPoops from 0x06
import NonFungibleToken from 0x05

transaction(account: Address, name: String, favoriteFood: String, luckyNumber: UInt64) {

    prepare(signer: AuthAccount) {
        let minter = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)


        let publicReference = getAccount(account).getCapability(/public/Collection)
                                            .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                            ?? panic("This account does not have a collection")
  
        publicReference.deposit(token: <- minter?.createNFT(name: name, favoriteFood: favoriteFood, luckyNumber: luckyNumber)!)

    }
    execute {
        log("NFT minted into Collection")
    }
}