class TransactionsController < ApplicationController
  before_action :find_account, only: [:new]

  def index
    @transactions = Transaction.where(account_id: current_user.accounts.ids)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.account = current_user.accounts.ids
    if @transaction.save
      redirect_to account_transactions_path
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:date, :amount, :tag, :comment)
  end

  def find_account
    @account = Account.find(params[:account_id])
  end
end
