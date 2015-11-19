class RenameUserIdToUsers < ActiveRecord::Migration
  def change
  	rename_column :contracts, :customer_user_id, :customer_id
  	rename_column :contracts, :owner_user_id, :owner_id
  end
end
