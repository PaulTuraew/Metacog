require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) do
    User.new(
      { :password => "long_enough",
        first_name: 'valid',
        last_name: 'valid',
        email: 'valid@example.com'})
  end

  it "should be invalid, when password is less than 8 chars" do
    expect(user).to be_valid
    user.password = "1234567"
    expect(user).to_not be_valid
  end

  it "should be valid, when password equals 8 chars" do
    expect(user).to be_valid
    user.password = "12345678"
    expect(user).to be_valid
  end

  it "should be valid, when password is greater than 8 chars" do
    expect(user).to be_valid
    user.password = "123456789"
    expect(user).to be_valid
end
end
