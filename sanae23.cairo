#[starknet::interface]
trait ISimpleCounter<TContractState> {
    fn get_current13_count(self: @TContractState) -> u256;
    fn ibncrement13(ref self: TContractState);
    fn dbecrement13(ref self: TContractState);
}


#[starknet::contract]
mod SimpleCounter {
    #[storage]
    struct Storage {
        // Counter variable
        counter: u256,
    }

    #[generate_trait]
    #[external(v0)]
    impl SimpleCounter of ISimpleCounter {
        fn get_current13_count(self: @ContractState) -> u256 {
            return self.counter.read();
        }

        fn ibncrement13(ref self: ContractState) {
            // Store counter value + 1
            let mut counter: u256 = self.counter.read() + 1;
            self.counter.write(counter);
        }
        fn dbecrement13(ref self: ContractState) {
            // Store counter value - 1
            let mut counter: u256 = self.counter.read() - 1;
            self.counter.write(counter);
        }
    }
}
