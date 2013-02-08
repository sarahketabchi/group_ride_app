require 'spec_helper'

describe "User pages" do
  subject { page }

  describe "#new" do
    let(:user) { FactoryGirl.create(:user) }

    before(:each) do
      visit new_user_path
      fill_in "user_name", with: "John"
      fill_in "user_email", with: "john@example.com"
      fill_in "user_phone_number", with: "777-777-7777"
    end

    # it "should increase the total number of users" do
    #   expect { click_button "Sign up!" }.to change(User, :count).by(1)
    # end
  end
end