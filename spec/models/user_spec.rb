require 'spec_helper'

describe User do
  before do
    @user = User.create(name: "Meghan",
                     email: "meghan@example.com",
                     phone_number: "444-222-3333")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:phone_number) }
  it { should respond_to(:organized_rides) }
  it { should respond_to(:group_rides) }

  it { should be_valid }
end