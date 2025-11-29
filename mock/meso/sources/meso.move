module meso::meso{
    use meso::lending_pool::FlashLoanReceipt;
    use aptos_std::fungible_asset::{FungibleAsset,Metadata};
    use aptos_std::object::{Object};
    public fun end_flashloan(_arg0: FungibleAsset, _arg1: FlashLoanReceipt){
        abort 1
    }

    public fun start_flashloan(_arg0: &signer, _arg1: Object<Metadata>, _arg2: u64) : (FungibleAsset, FlashLoanReceipt)
    {
        abort 1
    }
}