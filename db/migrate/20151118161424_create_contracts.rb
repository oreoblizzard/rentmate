class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :owner_user_id, null: false
      t.integer :customer_user_id, null: false
      t.references :room, null: false
      t.datetime :in_date, null: false
      t.datetime :out_date, null: false
      t.decimal :rent_price, default: 0
      t.timestamps null: false
    end
  end
end
