class User < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number

  validates :name, :phone_number, :presence => true

  #has_many :organized_rides

  has_many :attending_rides
  has_many :group_rides, :through => :attending_rides
end
