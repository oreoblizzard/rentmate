class Room < ActiveRecord::Base
	belong_to :room_type
	belong_to :building
	has_many :contracts
end
