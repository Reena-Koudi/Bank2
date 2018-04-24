require 'account'

describe Account do
  subject(:account) { Account.new }

  describe '#deposit' do
    it 'adds ammount to the balance' do
      expect(account.deposit(200)).to eq(200)
    end
  end

end
