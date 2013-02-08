class GroupRidesController < ApplicationController
  def new
    @group_ride = GroupRide.new
  end

  def index
    @group_rides = GroupRide.all
  end

  def create
    @group_ride = GroupRide.new(params[:group_ride])

    if @group_ride.save
      redirect_to group_ride_path(@group_ride)
    else
      render 'new'
    end
  end

  def show
    @group_ride = GroupRide.find(params[:id])
  end
end
