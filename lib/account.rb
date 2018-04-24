class Account

  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions.push(date: transaction_date, credit: amount, balance: @balance)
  end

  def withdrawal(amount)
    raise 'Balance is zero' if @balance == 0
    @balance -= amount
    @transactions.push(date: transaction_date, debit: amount, balance: @balance)
  end

  def transactions
    @transactions
  end

  private
  def transaction_date
    Time.now.strftime('%d/%m/%Y')
  end
end
