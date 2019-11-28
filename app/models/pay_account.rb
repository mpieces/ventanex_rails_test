class PayAccount < ActiveRecord::Base
  enum account_type: {bank_account:  1, debit_card: 2}
  validates :account_number, length: { is: 12 }
  validates :account_number, numericality: { only_integer: true }
end
