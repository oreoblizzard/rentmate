class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.references :apartment, null: false
      t.string :name, null: false
      t.integer :number_of_floor, default: 0
      t.timestamps null: false
    end
  end
end
