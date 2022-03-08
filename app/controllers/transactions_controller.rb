class TransactionsController < ApplicationController
  before_action :find_account, only: %i[new create edit update destroy]
  before_action :find_transaction, only: %i[edit update destroy]

  def index
    @transactions = Transaction.where(account_id: find_account).order('date desc')
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.account_id = @account.id
    if @transaction.save
      redirect_to account_transactions_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @transaction.update(transaction_params)
    redirect_to account_transactions_path(@account)
  end

  def destroy
    @transaction.destroy
    redirect_to account_transactions_path(@account)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:date, :amount, :tag, :comment)
  end

  def find_account
    @account = Account.find(params[:account_id])
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
