class User < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number

  # email validation
  before_save { |user| user.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, 
                    :format => { with: VALID_EMAIL_REGEX },
                    :uniqueness => { case_sensitive: false }


  validates :name, :phone_number, :presence => true
  # add validation for phone number format

  has_many :organized_rides, :class_name => "GroupRide", :foreign_key => :organizer_id

  has_many :attending_rides
  has_many :group_rides, :through => :attending_rides
end
