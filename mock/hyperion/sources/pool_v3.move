module hyperion_dex::pool_v3{
    use aptos_std::fungible_asset::{FungibleAsset};
    use aptos_std::object::Object;
    struct LiquidityPoolV3 has key{}
    public fun swap(
        _pool: Object<LiquidityPoolV3>,
        _a2b: bool,
        _by_amount_in: bool,
        _amount: u64,
        _fa_in: FungibleAsset,
        _sqrt_price_limit: u128
    ): (u64, FungibleAsset, FungibleAsset){
       abort 1 
    }
}