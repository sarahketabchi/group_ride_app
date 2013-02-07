require 'spec_helper'

describe GroupRide do
  before do
    @user = User.create(name: "John",
                     email: "john@example.com",
                     phone_number: "777-888-9999")
    @group_ride = GroupRide.create(title: "Butter lap",
                                description: "Start at bow and arrow",
                                organizer: @user.id)
  end

  subject { @group_ride }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:organizer) }
  it { should respond_to(:riders) }

  it { should be_valid }
end