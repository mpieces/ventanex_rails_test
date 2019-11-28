require 'rails_helper'

RSpec.describe PayAccount, type: :model do

  it "validates account_number" do
    pay_account = PayAccount.new(account_number: 123)
    pay_account.save
    expect(pay_account.errors.full_messages).to(include("Account number is the wrong length (should be 12 characters)"))
  end

  it "makes sure account_number includes only integers" do 
    pay_account = PayAccount.new(account_number: "22119AMEX202")
    pay_account.save
    expect(pay_account.errors.full_messages).to(include("Account number is not a number"))
  end
end




 




