module hyperion::tick_math{
    use hyperion::i32;
    public fun max_sqrt_price(): u128 {
        1
    }

    public fun min_sqrt_price(): u128 {
        1
    }

    #[view]
    public fun get_sqrt_price_at_tick_u32(_tick: u32): u128 {
        1
    }
    #[view]
    public fun get_tick_at_sqrt_price(_sqrt_price: u128): i32::I32 {
        abort 1
    }
}