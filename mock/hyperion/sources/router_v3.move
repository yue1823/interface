module hyperion_dex::router_v3 {
    use aptos_std::fungible_asset::{FungibleAsset,Metadata};
    use aptos_std::object::Object;
    use aptos_std::option::{Option,none};

    use hyperion_dex::position_v3;
    public entry fun claim_fees(
        _arg0: &signer, _arg1: vector<address>, _arg2: address
    ) {
    }
    public fun add_liquidity_by_contract(
            _lp: &signer,
            _lp_object: Object<position_v3::Info>,
            _amount_a_desired: u64,
            _amount_b_desired: u64,
           _amount_a_min: u64,
            _amount_b_min: u64,
            fa_a: FungibleAsset,
            fa_b: FungibleAsset,
            _deadline: u64
        ): (u64, u64, FungibleAsset, FungibleAsset){
            (0,0,fa_a,fa_b)
        }
    public fun remove_liquidity_by_contract(
        _lp: &signer,
        _lp_object: Object<position_v3::Info>,
        _liquidity_delta: u128,
        _amount_a_min: u64,
        _amount_b_min: u64,
        _deadline: u64
    ): (Option<FungibleAsset>, Option<FungibleAsset>) {
        (none<FungibleAsset>(),none<FungibleAsset>())
    }

     #[view]
    public fun optimal_liquidity_amounts(
        _tick_lower_u32: u32,
        _tick_upper_u32: u32,
        _token_a: Object<Metadata>,
        _token_b: Object<Metadata>,
        _fee_tier: u8,
        _amount_a_desired: u64,
        _amount_b_desired: u64,
        _amount_a_min: u64,
        _amount_b_min: u64,
    ): (u128, u64, u64) {
        (0, 0, 0)
    }
    #[view]
    public fun get_amount_by_liquidity(
        _position: Object<position_v3::Info>
    ): (u64, u64){
        (1,1)
    }
}
