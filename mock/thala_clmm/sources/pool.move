module thalaswap_clamm::pool{
    use aptos_std::object::Object;
    use aptos_std::fungible_asset::FungibleAsset;
    use aptos_std::string::String;
    struct Pool has key{}
    public fun swap(_a:&signer,_b:Object<Pool>,_c:FungibleAsset,_d:u64,_e:u128,_f:String):(FungibleAsset,FungibleAsset){
        abort 1
    }
}