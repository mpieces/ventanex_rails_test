class PayAccountsController < ApplicationController

  def index
    @pay_accounts = PayAccount.all
  end

  def show
    @pay_account = PayAccount.find(params[:id])
  end

  def create
  end

  def destroy
  end



end


