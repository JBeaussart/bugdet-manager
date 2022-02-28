class Transaction < ApplicationRecord
  belongs_to :account
  validates :date, presence: true
  validates :amount, presence: true
end
