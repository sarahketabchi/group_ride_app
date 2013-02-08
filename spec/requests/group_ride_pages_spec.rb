require 'spec_helper'

describe "GroupRide" do
  subject { page }

  describe "when a new ride is created (#new)" do
    let(:group_ride) { FactoryGirl.create(:group_ride) }

    before(:each) do
      visit new_group_ride_path
    end

    it "should increase the total number of group rides" do
      #expect { click_button "Submit Ride" }.to change(GroupRide, :count).by(1)
    end
  end
end