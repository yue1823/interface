module thalaswap_v2::pool {
    use aptos_std::object::{Object};
    struct Pool has key {}

    public entry fun add_liquidity_stable_entry(
        _arg0: &signer, _arg1: Object<Pool>, _arg2: vector<u64>, _arg3: u64
    ) {}
}
