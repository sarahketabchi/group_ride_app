require 'spec_helper'

describe User do
  let(:user) { User.create!(name: "Meghan",
                     email: "meghan@example.com",
                     phone_number: "444-222-3333") }

  subject { user }

  it { should respond_to(:organized_rides) }
  it { should respond_to(:group_rides) }

  #it { should be_valid }

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        user.email = invalid_address
        user.should_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.1st@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        user.email = valid_address
        user.should be_valid
      end
    end
  end

  describe "when email address is already taken" do
    subject do
      user_with_same_email = user.dup
      user_with_same_email.email = user.email.upcase
      user_with_same_email
    end

    it { should_not be_valid }
  end


end