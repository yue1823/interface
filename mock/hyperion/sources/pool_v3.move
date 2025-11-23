module hyperion_dex::pool_v3{
    use aptos_std::fungible_asset::{FungibleAsset,Metadata};
    use aptos_std::object::{Object,Self};
    use hyperion_dex::position_v3;
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


    public fun open_position(
        _user: &signer,
        _token_a: Object<Metadata>,
        _token_b: Object<Metadata>,
        _fee_tier: u8,
        _tick_lower: u32,
        _tick_upper: u32
    ): Object<position_v3::Info> {
        object::address_to_object<position_v3::Info>(@0x0)
    }

    #[view]
    public fun get_amount_out(
        _pool: Object<LiquidityPoolV3>, _from: Object<Metadata>, _amount: u64
    ): (u64, u64){
        (1,1)
    }
}