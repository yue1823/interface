module echelon::scripts{
    use aptos_std::object::Object;
    use echelon::lending::Market;

    struct Notacoin {
        dummy_field: bool,
    }

    public entry fun supply<T0>(_caller:&signer, _market:Object<Market>, _call:u64){
        abort 1
    }

    public entry fun supply_fa(_caller:&signer, _market:Object<Market>, _call:u64){
        abort 1
    }

    public entry fun withdraw<T0>(_arg0: &signer, _arg1: Object<Market>, _arg2: u64) {
        abort 1
    }

    public entry fun withdraw_fa(_arg0: &signer, _arg1: Object<Market>, _arg2: u64) {
        abort 2 
    }

    public entry fun claim_all_rewards<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9>(_arg0: &signer, _arg1: vector<Object<0x1::fungible_asset::Metadata>>, _arg2: vector<0x1::string::String>, _arg3: vector<0x1::string::String>){}

}