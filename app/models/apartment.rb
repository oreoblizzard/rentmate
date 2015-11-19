class Apartment < ActiveRecord::Base
	has_many :buildings
	has_many :users
end
