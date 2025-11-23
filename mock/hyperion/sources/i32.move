module hyperion_dex::i32{
    struct I32{}
    public fun as_u32(_v: I32): u32 {
        abort 1
    }
}