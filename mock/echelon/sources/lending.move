module echelon::lending{
    struct Market has key{}
    public fun account_shares(_arg0: address, _arg1: 0x1::object::Object<Market>) : u64{
        1
    }
}