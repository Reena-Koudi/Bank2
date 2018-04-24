require 'account'

describe Account do
  subject(:account) { Account.new }

  describe '#deposit' do
    it 'adds ammount to the balance' do
      expect(account.deposit(200)).to eq([{:date=>"24/04/2018", :credit=>200, :balance=>200}])
    end
  end

  describe '#withdrawal' do
    it 'deducts amount from the balance' do
      account.deposit(500)
      expect(account.withdrawal(200)).to eq([{:date=>"24/04/2018", :credit=>500, :balance=>500}, {:date=>"24/04/2018", :debit=>200, :balance=>300}])
    end

    it 'raises an error for the withdrawal if balance is zero' do
      expect{ account.withdrawal(100) }.to raise_error 'Balance is zero'
    end
  end

  describe '#transactions' do
    it 'transactions could be fetched' do
      account.deposit(200)
      expect(account.transactions).to eq([{:date=>"24/04/2018", :credit=>200, :balance=>200}])
    end
  end

end
