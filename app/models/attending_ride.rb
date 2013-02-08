class AttendingRide < ActiveRecord::Base
  # attr_accessible :title, :body

  #validates :user_id, :group_ride_id, :presence => true

  belongs_to :group_ride
  #belongs_to :user
  belongs_to :rider, :class_name => "User"


end
