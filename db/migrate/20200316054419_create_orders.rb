class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :lotstock
      t.integer :quantity
      t.decimal :price
      t.decimal :total
      t.references :orderstatus, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
