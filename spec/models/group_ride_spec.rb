require 'spec_helper'

describe "GroupRide" do
  before do
    @user = User.create(name: "John",
                     email: "john@example.com",
                     phone_number: "777-888-9999")
    @group_ride = GroupRide.create(title: "Butter lap",
                                description: "Start at bow and arrow",
                                organizer_id: @user.id)
  end

  subject { @group_ride }

  it { should respond_to(:organizer_id) }
  it { should respond_to(:riders) }
  it { should respond_to(:organizer) }

  it { should be_valid }
end