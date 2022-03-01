class AccountsController < ApplicationController
  before_action :find_account, only: %i[show edit update destroy]

  def index
    @accounts = Account.where(user: current_user)
  end

  def show; end

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
