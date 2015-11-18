class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
