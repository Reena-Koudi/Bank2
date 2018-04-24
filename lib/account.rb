class Account

  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    raise 'Balance is zero' if @balance == 0
    @balance -= amount
  end
end
