//move lang - ownership
//In other lang - call by value, call by ref in other lang
//ownership of variables : scope
//scope : copy - working fine, move - move the variable so not available
module MyAddr::owner{
    
    use aptos_std::debug;

    public fun printex(a:u8):u8{
        a
    }

    #[test(account = @0x1)]
    public entry fun ownership(){
        // let a:u8 = 23;
        // let c:u8 = printex(copy a);
        // let c:u8 = printex(move a);
        // c = printex(a);
        // debug::print<u8>(&c);
    }
}