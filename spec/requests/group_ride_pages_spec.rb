require 'spec_helper'

describe "GroupRide" do
  subject { page }

  describe "when a new ride is created (#new)" do
    let(:group_ride) { FactoryGirl.create(:group_ride) }
    let(:user) { FactoryGirl.create(:user) }

    before do
      visit new_group_ride_path
      fill_in "group_ride_title", with: "Sunday Funday"
      fill_in "group_ride_description", with: "From Dolores Park to Ocean Beach"
      fill_in "group_ride_organizer_id", with: user.id
    end

    it "should increase the total number of group rides" do
      expect { click_button "Submit Ride!" }.to change(GroupRide, :count).by(1)
    end
  end

  describe "when a ride is deleted (#destroy)" do
    2.times { FactoryGirl.create(:group_ride) }

    before do
      
    end

  end
end