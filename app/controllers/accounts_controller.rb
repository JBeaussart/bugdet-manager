class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.user = current_user
    if @account.save
      redirect_to accounts_path
    else
      puts @account.user
      render :new
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :bank, :fund)
  end
end
