class AddUserIdToPayAccounts < ActiveRecord::Migration[5.2]
  def change
    add_reference :pay_accounts, :user, foreign_key: true
  end
end
