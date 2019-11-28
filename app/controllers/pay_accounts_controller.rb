class PayAccountsController < ApplicationController

  def index
    @pay_accounts = PayAccount.all
  end

  def show
    @pay_account = PayAccount.find(params[:id])
  end

  def new
    @pay_account = PayAccount.new
  end

  def create
    @pay_account = PayAccount.new(pay_account_params)
    if @pay_account.save
        flash[:notice] = "Account was successfully created"
        redirect_to pay_accounts_path(@pay_account)
    else 
        render 'new'
    end
  end

  def destroy
    @pay_account = PayAccount.find(params[:id])
    @pay_account.destroy
    flash[:notice] = "Account was successfully deleted"
    redirect_to pay_account_path
  end


  private

  def pay_account_params
    params.require(:pay_account).permit(:nickname, :account_number, :account_type)
  end


end


