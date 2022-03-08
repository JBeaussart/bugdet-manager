class Account < ApplicationRecord
  belongs_to :user
  has_many :bank_transactions, dependent: :destroy
  validates :bank, presence: true
end
