require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'account validates' do
    it 'is not valid without a bank' do
      account = Account.new
      expect(account).to_not be_valid
    end
    it 'is valid with a bank and a user' do
      user = User.new
      account = Account.new(bank: 'bnp', user: user)
      expect(account).to be_valid
    end
  end
end
