class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :building, null: false
      t.references :room_type, null: false
      t.integer :floor_number, default: 0
      t.timestamps null: false
    end
  end
end
