require 'rails_helper'

RSpec.describe BankTransaction, type: :model do
  context 'transaction validates' do
    it 'is not valid without a bank' do
      bank_transaction = BankTransaction.new
      expect(bank_transaction).to_not be_valid
    end

    it 'is valid with a bank and a user' do
      user = User.new
      account = Account.new(bank: 'bnp', user: user)
      bank_transaction = BankTransaction.new(date: '08/06/2021', amount: 23, account: account)
      expect(bank_transaction).to be_valid
    end
  end
end
