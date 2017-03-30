#Bank Account

class BankAccount

  attr_reader :balance, :interest_rate

  def initialize
    @balance = 0
    @interest_rate = 0.05
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    if @balance - amount < 0
      puts "insufficient funds"
    else
      @balance = @balance - amount
    end
  end

  def gain_interest
    @balance = @balance * (1 + interest_rate)
  end

end

someone_account = BankAccount.new
puts someone_account.balance
someone_account.withdraw(100)
puts someone_account.balance
someone_account.deposit(10000000)
puts someone_account.balance
someone_account.withdraw(5000)
puts someone_account.balance
someone_account.gain_interest
puts someone_account.balance
