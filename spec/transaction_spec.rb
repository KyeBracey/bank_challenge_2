require 'transaction'

describe Transaction do
  let(:today) { Time.now }
  let(:credit_500_transaction) { described_class.new(today, 100, nil, 100) }

  describe '#information' do
    it 'Returns the date, credit, debit and balance as a hash' do
      expect(credit_500_transaction.information).to eq({ date: today,
                                                         credit: 100,
                                                         debit: nil,
                                                         balance: 100 })
    end
  end

end
