module hyperion_dex::rewarder {
    use aptos_std::object::Object;
    use aptos_std::fungible_asset::{Metadata};
    struct Rewarder has copy, drop, store { }
    struct PendingReward has drop, copy {
        reward_fa: Object<Metadata>,
        amount_owed: u64
    }
    public fun pending_rewards_unpack(info: &PendingReward): (Object<Metadata>, u64) {
        (info.reward_fa, info.amount_owed)
    }
}