require 'account'

describe Account do
  subject(:account) { Account.new }

  describe '#deposit' do
    it 'adds ammount to the balance' do
      expect(account.deposit(200)).to eq(200)
    end
  end

  describe '#withdrawal' do
    it 'deducts amount from the balance' do
      account.deposit(500)
      expect(account.withdrawal(200)).to eq(300)
    end
  end
end
