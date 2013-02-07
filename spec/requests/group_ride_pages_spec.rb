require 'spec_helper'

describe "GroupRide pages" do
  subject { page }

  describe "#new" do
    let(:group_ride) { FactoryGirl.create(:group_ride) }

    before(:each) do
      #visit new_group_ride
    end
  end

end