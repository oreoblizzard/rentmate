class Building < ActiveRecord::Base
	belong_to :apartment
	has_mamy :rooms
end
