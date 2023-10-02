module MyAddr::mathFunction{
    use aptos_std::debug;
    

    public fun max(a:u8, b:u8):u8{
        if(a>b)
        {a}
        else{b}
    }

    public fun whilell(n: u8):u8{
        let i:u8=1;
        let sum:u8=0;
        while(i<=n){
            sum = sum + i;
            i = i + 1;
        };
        sum
    }

     public fun add(a:u8,b:u8):u8{
        a+b
    }

    public fun sub(a:u8,b:u8):u8{
        a-b
    }

    public fun mul(a:u8,b:u8):u8{
        a*b
    }

    public fun div(a:u8,b:u8):u8{
        a/b
    }

    #[test(account =@0x1)]
    public entry fun addoex(){
        let c:u8 = add(10,5);
        debug::print<u8>(&c);
    }

    #[test(account = @0x1)]
    public entry fun subex(){
        let c:u8 = sub(10,5);
        debug::print<u8>(&c);
    }

     #[test(account = @0x1)]
    public entry fun mulex(){
        let c:u8 = mul(10,5);
        debug::print<u8>(&c);
    }

     #[test(account = @0x1)]
    public entry fun divdex(){
        let c:u8 = div(10,5);
        debug::print<u8>(&c);
    }

    #[test(account = @0x1)]
    public entry fun whilex(){
        let c:u8 = whilell(12);
        debug::print<u8>(&c);
    }

    #[test(account = @0x1)]
    public entry fun maxex(){
        let c:u8 = max(5, 9);
        debug::print<u8>(&c);
    }
}