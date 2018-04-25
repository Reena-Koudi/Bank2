class Transaction

  attr_reader :record

  def initialize
    @record = []
  end

  def record_credit(credit, balance)
    @record.push(date: transaction_date, credit: amount_formatter(credit), balance: amount_formatter(balance))
  end

  def record_debit(debit, balance)
    @record.push(date: transaction_date, debit: amount_formatter(debit), balance: amount_formatter(balance))
  end


  private
  def amount_formatter(amount)
    '%.2f' % amount
  end

  def transaction_date
    Time.now.strftime('%d/%m/%Y')
  end
end
