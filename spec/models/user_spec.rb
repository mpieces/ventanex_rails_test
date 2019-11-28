require 'rails_helper'

RSpec.describe User, type: :model do 
    it "makes sure a user name is present" do 
      user = User.create(name: "Bob", email: "bob@test.com", password_digest: "password")
      expect(user).to be_persisted
      expect(user.name).to eq "Bob"
    end
  
  end