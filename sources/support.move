module support::support{
    use aptos_std::string::{String,utf8};
    /// name error 
    const E_NOT_AVAILABLE :u64 =1;
    public fun get_echelon_lending_market(token:String):address{
        if(token == utf8(b"zusdt")){
            return @0x447b3b516546f28e8c4f6825a6287b09161659e7c500c599c29c28a8492844b8
        }else if(token == utf8(b"zusdc")){
            return @0xf22bede237a07e121b56d91a491eb7bcdfd1f5907926a9e58338f964a01b17fa
        }else if(token == utf8(b"apt")){
            return @0x761a97787fa8b3ae0cef91ebc2d96e56cc539df5bc88dadabee98ae00363a831
        }else if(token == utf8(b"weth")){
            return @0x548cf587bd918a0005b3372a1d23e64b18ace3c61962f087a21eac52cf228504
        }else if(token == utf8(b"usdt")){
            return @0xac00e90cdadec06d81e0d5ce7a3e93d63d563e982dea0ca15bad2b067f42d2be
        }else if(token == utf8(b"usdc")){
            return @0x2c4e0bb55272f9c120ffd5a414c10244005caf9c1b14527cea3df7074c5bf623
        }else{
            abort E_NOT_AVAILABLE
        }
    }

}
