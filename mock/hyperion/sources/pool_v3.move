module hyperion_dex::pool_v3{
    use aptos_std::fungible_asset::{FungibleAsset,Metadata};
    use aptos_std::object::{Object,Self};
    use hyperion_dex::position_v3;
    use hyperion_dex::i32::I32;
    use hyperion_dex::rewarder;
    struct LiquidityPoolV3 has key{}
    const TICK_SPACING_VEC: vector<u32> = vector[1, 10, 60, 200, 20, 50];
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
    #[view]
    public fun get_pool_liquidity(_pool: Object<LiquidityPoolV3>): u128{
        1
    }
    #[view]
    public fun liquidity_pool_address_safe(
        _token_a: Object<Metadata>, _token_b: Object<Metadata>, _fee_tier: u8
    ): (bool, address){
        (false,@0xa)
    }

    #[view]
    public fun liquidity_pool_address(
        _token_a: Object<Metadata>, _token_b: Object<Metadata>, _fee_tier: u8
    ): address{
       @0xa 
    }

    #[view]
    public fun liquidity_pool(
        _token_a: Object<Metadata>, _token_b: Object<Metadata>, _fee_tier: u8
    ): Object<LiquidityPoolV3>{
        abort 1
    }

    #[view]
    public fun current_tick_and_price(_pool_address: address): (u32, u128){
        (1,1)
    }
    #[view]
    public fun current_price(
        _arg0: Object<Metadata>, _arg1: Object<Metadata>, _arg2: u8
    ): u128{
        (1)
    }
    public fun current_tick(
        _arg0: Object<Metadata>, _arg1: Object<Metadata>, _arg2: u8
    ): I32{
        abort 1
    }
    #[view]
    public fun pool_next_initialize_tick(
        _arg0: Object<LiquidityPoolV3>, _arg1: bool
    ): (I32, bool){
        abort 1
    }

    #[view]
    public fun get_pending_rewards(
        _position: Object<position_v3::Info>
    ): vector<rewarder::PendingReward> {
        vector[]
    }

    #[view]
    public fun get_pending_fees(_position: Object<position_v3::Info>): vector<u64> {
        vector[]
    }
}