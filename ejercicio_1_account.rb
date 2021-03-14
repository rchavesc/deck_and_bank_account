class Account
    attr_accessor :balance
    
    def initialize(bank, account_number, balance = 0)
        @bank = bank
        @account_number = account_number
        @balance = balance
    end

    def transfer(amount, account)
        @balance -= amount
        account.balance += amount
    end
end