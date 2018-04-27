require 'account'
require 'date'

describe Account do
  subject(:account) { Account.new }

  describe '#deposit' do
    it 'adds ammount to the balance' do
      date = Date.today.strftime('%d/%m/%Y')
      result = [{:date=>date, :credit=>"200.00", :balance=>"200.00"}]
      expect(account.deposit(200)).to eq(result)
    end
  end

  describe '#withdrawal' do
    it 'deducts amount from the balance' do
      account.deposit(500)
      date = Date.today.strftime('%d/%m/%Y')
      result = [{:date=>date, :credit=>"500.00", :balance=>"500.00"},
         {:date=>date, :debit=>"200.00", :balance=>"300.00"}]
      expect(account.withdrawal(200)).to eq(result)
    end

    it 'raises an error for the withdrawal if balance is zero' do
      expect{ account.withdrawal(100) }.to raise_error 'Insufficient balance'
    end
  end

  describe '#balance' do
    it 'displays the balance of the account' do
      account.deposit(200)
      account.withdrawal(100)
      expect(account.balance).to eq(100)
    end
  end
end
