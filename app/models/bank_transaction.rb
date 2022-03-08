class BankTransaction < ApplicationRecord
  belongs_to :account
  validates :date, presence: true
  validates :amount, presence: true
  after_create :update_account_fund_create
  before_update :update_account_fund_update
  after_destroy :update_account_fund_delete

  def update_account_fund_create
    account.fund += amount
    account.save
  end

  def update_account_fund_update
    account.fund += amount - amount_was
    account.save
  end

  def update_account_fund_delete
    account.fund -= amount
    account.save
  end
end
