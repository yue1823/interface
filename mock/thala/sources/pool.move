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

    struct Flashloan {
        pool_obj: Object<Pool>,
        amounts: vector<u64>
    }

    public fun flashloan(p0: Object<Pool>, p1: vector<u64>):
        (vector<FungibleAsset>, Flashloan)
    {
        (vector[], Flashloan { pool_obj: p0, amounts: p1 })
    }
    public fun pay_flashloan(p0: vector<FungibleAsset>, p1: Flashloan){
        p0.destroy_empty();
        let Flashloan{pool_obj: _v4, amounts: _v5} = p1;
    }
}

