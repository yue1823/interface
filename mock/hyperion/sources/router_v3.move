module hyperion_dex::router_v3 {
    public entry fun claim_fees(
        _arg0: &signer, _arg1: vector<address>, _arg2: address
    ) {
    }
    public fun add_liquidity_by_contract(
            lp: &signer,
            lp_object: Object<position_v3::Info>,
            amount_a_desired: u64,
            amount_b_desired: u64,
            amount_a_min: u64,
            amount_b_min: u64,
            fa_a: FungibleAsset,
            fa_b: FungibleAsset,
            _deadline: u64
        ): (u64, u64, FungibleAsset, FungibleAsset){
            (0,0,fa_a,fa_b)
        }
    public fun remove_liquidity_by_contract(
        lp: &signer,
        lp_object: Object<position_v3::Info>,
        liquidity_delta: u128,
        amount_a_min: u64,
        amount_b_min: u64,
        _deadline: u64
    ): (Option<FungibleAsset>, Option<FungibleAsset>) {
        (none<FungibleAsset>(),none<FungibleAsset>())
    }
}
