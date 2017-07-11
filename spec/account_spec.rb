require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'Starts out with a balance of 0.0' do
    expect(account.balance).to eq(0.0)
  end

  describe '#deposit' do
    it 'Adds the passed-in amount to the balance' do
      expect{ account.deposit(100) }.to change{ account.balance }.by(100)
    end
  end

  describe '#withdraw' do
    it 'Deducts the passed-in amount to the balance' do
      expect{ account.withdraw(100) }.to change{ account.balance }.by(-100)
    end
  end
end
