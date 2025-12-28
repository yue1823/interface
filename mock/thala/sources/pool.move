module thalaswap_v2::pool {
    use aptos_std::object::{Object};
    use aptos_std::fungible_asset::{FungibleAsset, Metadata};
    struct Pool has key {}

    public entry fun add_liquidity_stable_entry(
        _arg0: &signer,
        _arg1: Object<Pool>,
        _arg2: vector<u64>,
        _arg3: u64
    ) {}

    public fun swap_exact_in_weighted(
        _arg0: &signer,
        _arg1: Object<Pool>,
        arg2: FungibleAsset,
        _arg3: Object<Metadata>
    ): FungibleAsset {
        arg2
    }

    public fun swap_exact_in_metastable(
        _arg0: &signer,
        _arg1: Object<Pool>,
        arg2: FungibleAsset,
        _arg3: Object<Metadata>
    ): FungibleAsset {
        arg2
    }

    public fun swap_exact_in_stable(
        _arg0: &signer,
        _arg1: Object<Pool>,
        arg2: FungibleAsset,
        _arg3: Object<Metadata>
    ): FungibleAsset {
        arg2
    }
}

