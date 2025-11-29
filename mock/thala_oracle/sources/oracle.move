module staked_lpt_oracle::oracle{
    use fixed_point64::fixed_point64::FixedPoint64;
    use aptos_std::object::Object;
    use aptos_std::fungible_asset::{Metadata};
    public fun get_price_unsafe(_arg0:Object<Metadata>) : (u8, FixedPoint64){
        abort 1
    }
    public fun get_price(_arg0:Object<Metadata>) :FixedPoint64{
        abort 1
    }
    public fun initialized_lp_oracle(_arg0: Object<Metadata>) : bool{
        true
    }
}