contract;

abi ImpurityTest {
    fn impure_func(gas: u64, coins: u64, color: b256, input: ()) -> bool;
}

impl ImpurityTest for Contract {
    fn impure_func(gas: u64, coins: u64, color: b256, input: ()) -> bool {
        foo();
        true
    }
}

impure fn foo() {}