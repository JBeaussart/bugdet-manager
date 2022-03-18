class BankTransactionsController < ApplicationController
  before_action :find_account, only: %i[new create edit update destroy]
  before_action :find_bank_transaction, only: %i[edit update destroy]

  def index
    access_tags_yml
    @bank_transactions = BankTransaction.where(account_id: find_account).order('date desc').page(params[:page])
  end

  def new
    transaction_tags
    @bank_transaction = BankTransaction.new
  end

  def create
    @bank_transaction = BankTransaction.new(bank_transaction_params)
    @bank_transaction.account_id = @account.id
    if @bank_transaction.save
      redirect_to account_bank_transactions_path
    else
      render :new
    end
  end

  def edit
    transaction_tags
  end

  def update
    @bank_transaction.update(bank_transaction_params)
    redirect_to account_bank_transactions_path(@account)
  end

  def destroy
    @bank_transaction.destroy
    redirect_to account_bank_transactions_path(@account)
  end

  private

  def access_tags_yml
    @tags_color = YAML.load_file('config/tags.yml')
  end

  def transaction_tags
    @tags = @account.bank_transactions.map(&:tag).uniq
  end

  def bank_transaction_params
    params.require(:bank_transaction).permit(:date, :amount, :tag, :comment)
  end

  def find_account
    @account = Account.find(params[:account_id])
  end

  def find_bank_transaction
    @bank_transaction = BankTransaction.find(params[:id])
  end
end
