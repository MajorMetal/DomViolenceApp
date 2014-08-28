class Victim < ActiveRecord::Base
has_many :shelters, through: :signups
has_many :signups
belongs_to :shelters
end
