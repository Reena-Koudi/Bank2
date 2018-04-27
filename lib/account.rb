require_relative 'transactions'
require_relative 'print'

class Account
  attr_accessor :transaction
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE, transaction = Transaction.new)
    @balance = balance
    @transaction = transaction
  end

  def deposit(credit)
    @balance += credit
    @transaction.record_credit(credit, @balance)
  end

  def withdrawal(debit)
    raise 'Insufficient balance' if @balance < debit
    @balance -= debit
    @transaction.record_debit(debit, @balance)
  end

  def balance
    @balance
  end

  private
  def transaction_date
    Time.now.strftime('%d/%m/%Y')
  end
end
