class User < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number

  validates :name, :phone_number, :presence => true
  # add validation for email address format/phone number?

  has_many :organized_rides, :class_name => "GroupRide", :foreign_key => :organizer_id

  has_many :attending_rides
  has_many :group_rides, :through => :attending_rides
end
