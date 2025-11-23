module hyperion_dex::position_v3{

    use aptos_framework::fungible_asset::{Metadata};
    use aptos_framework::object::{Object};
    use hyperion_dex::i32;

    #[resource_group_member(group = aptos_framework::object::ObjectGroup)]
    struct Info has key {
    }
    const ENOT_POSITION_OWNER: u64 = 1200001;
    const EPOSITION_NOT_INITIALIZED: u64 = 1200002;
    const EPOSITION_NOT_EMPTY: u64 = 12000003;

    public fun get_tick(
        _position: Object<Info>
    ): (i32::I32, i32::I32) {
        abort 1 
    }

    public fun get_liquidity(
        _position: Object<Info>
    ): u128 {
        0
    }

    public fun get_pool_info(
        _position: Object<Info>
    ): (Object<Metadata>, Object<Metadata>, u8){
        abort 1
    }
}