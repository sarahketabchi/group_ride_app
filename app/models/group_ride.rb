class GroupRide < ActiveRecord::Base
  attr_accessible :title, :description, :organizer

  validates :title, :description, :organizer, :presence => true

  #belongs_to :organizer, :class_name => "User"

  has_many :attending_rides
  has_many :riders, :through => :attending_rides
end