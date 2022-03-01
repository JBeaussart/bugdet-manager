class Transaction < ApplicationRecord
  belongs_to :account
  validates :date, presence: true
  validates :amount, presence: true
  after_create :update_account_fund

  def update_account_fund
    account.fund += amount
    account.save
  end
end
