class GroupRidesController < ApplicationController
  def new
    @group_ride = GroupRide.new
  end

  # def show
  # end


  def index
    @group_rides = GroupRide.all
  end
end
