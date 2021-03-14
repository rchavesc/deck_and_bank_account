require_relative 'ejercicio_1_account'

class User
    def initialize(name, accounts)
        @name = name
        @accounts = accounts
    end

    def total_balance
        partial_balances = @accounts.map { |account| account.balance }
        partial_balances.sum
    end
end