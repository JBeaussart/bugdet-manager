class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :bank, presence: true
end
