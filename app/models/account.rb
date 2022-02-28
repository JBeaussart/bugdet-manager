class Account < ApplicationRecord
  belongs_to :user
  validates :bank, presence: true
end
