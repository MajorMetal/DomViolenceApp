class Shelter < ActiveRecord::Base
	has_many :signups
	has_many :victims, through: :signups
	
end
