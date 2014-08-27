class Shelter < ActiveRecord::Base
	has_many :victims, through: :signups
	has_many :signups
	belongs_to :victims
end
