class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.string :type_name, null: false
      t.decimal :price_day, default: 0
      t.decimal :price_month, default: 0
      t.timestamps null: false
    end
  end
end
