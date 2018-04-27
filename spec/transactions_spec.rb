require 'transactions'


describe Transaction do
  subject(:transaction) { Transaction.new }
  #date = Date.new(2018, 4, 25)

  describe '#record_credit' do
    it 'records the credit transaction' do
      transaction.record_credit(200, 200)
      date = Date.today.strftime('%d/%m/%Y')
      result = [{:date=>date, :credit=>"200.00", :balance=>"200.00"}]
      expect(transaction.record).to eq(result)
    end
  end

  describe '#record_debit' do
    it 'records the debit transaction' do
      transaction.record_debit(200, 200)
      date = Date.today.strftime('%d/%m/%Y')
      result = [{:date=>date, :debit=>"200.00", :balance=>"200.00"}]
      expect(transaction.record).to eq(result)
    end
  end
end
