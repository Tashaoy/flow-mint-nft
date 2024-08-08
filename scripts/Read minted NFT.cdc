import CryptoPoops from 0x06
import NonFungibleToken from 0x05

pub fun main(account: Address, id:UInt64) {
    var publicReference = getAccount(account).getCapability(/public/Collection)
                                             .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                             ?? panic("This account does not have a collection")

  let NFTIds = publicReference.getIDs()
  let metadata = publicReference.borrowAuthNFT(id: NFTIds[id])
  return 
  
}