class Contract < ActiveRecord::Base
	belong_to :room
	has_many :bills
	belongs_to :users, foreign_key: "owner_id"
	belongs_to :users, foreign_key: "customer_id"
end
