require 'print'

describe Print do
  subject(:print) { Print.new }

  describe '#print_statement' do
    it 'display the transactions in reverse order' do
      transaction = double("transaction")
      allow(transaction).to receive(:record).and_return([{date: "10/01/2012", credit: "1000.00", balance: "1000.00"},
                                                        {date: "13/01/2012", credit: "2000.00", balance: "3000.00"},
                                                        {date: "14/01/2012", debit: "500.00", balance: "2500.00"}])

      result = "date || credit || debit || balance\n"\
               "14/01/2012 ||  || 500.00 || 2500.00\n"\
               "13/01/2012 || 2000.00 ||  || 3000.00\n"\
               "10/01/2012 || 1000.00 ||  || 1000.00\n"
      expect{ print.print_statement(transaction.record) }.to output(result).to_stdout
    end
  end
end
