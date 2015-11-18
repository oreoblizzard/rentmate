class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.references :contract, null: false
      t.datetime :payment_date, null: false
      t.string :status, null: false
      t.decimal :bill_price, default: 0
      t.timestamps null: false
    end
  end
end
