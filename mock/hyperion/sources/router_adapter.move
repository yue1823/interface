module hyperion_dex::router_adapter{
    use aptos_framework::object::Object;
    use aptos_framework::fungible_asset::Metadata;

    public entry fun exact_input_swap_entry(
        _user: &signer,
        _fee_tier: u8,
        _amount_in: u64,
        _amount_out_min: u64,
        _sqrt_price_limit: u128,
        _from_token: Object<Metadata>,
        _to_token: Object<Metadata>,
        __is_stable: bool,
        _recipient: address,
        _deadline: u64
    ){
        
    }
}