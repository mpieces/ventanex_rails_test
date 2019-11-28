class User < ApplicationRecord
   validates :name, :email, :password_digest, presence: true
   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

   has_many :pay_accounts
end