module MyAddr::example{
    use aptos_std::debug;
    use std::signer;

    public fun adding(a: u64, b: u8):u64{
        a+(b as u64)
    }


    #[test(account = @0x1)]
    public entry fun addex(){
        let c:u64 = adding(500,6);
        debug::print<u64>(&c);
    }

    #[test(account = @0x1)]
    public entry fun debugex(account: signer){
        let a:u64= 23;
        let addr = signer::address_of(&account);
        debug::print<address>(&addr);
        debug::print<u64>(&a);
    }

}