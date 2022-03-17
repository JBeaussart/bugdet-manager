class AccountsController < ApplicationController
  before_action :find_account, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:home]

  def index
    @accounts = Account.where(user: current_user)
  end

  def show
    @months = I18n.t("date.month_names").map!(&:capitalize)
    @tags = @account.bank_transactions.map(&:tag).uniq
    @savings = []
    @revenu = 0
    @depense = 0
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.user = current_user
    if @account.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @account.update(account_params)
    redirect_to accounts_path
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end

  private

  def find_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:name, :bank, :fund)
  end
end
