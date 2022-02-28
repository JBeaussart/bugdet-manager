class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.where(account_id: current_user.accounts.ids)
  end
end
