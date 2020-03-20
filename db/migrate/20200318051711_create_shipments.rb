class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.date :date
      t.integer :quantity
      # t.string :container
      t.references :warehouse, null: false, foreign_key: true
      t.references :shipmentmethod, null: false, foreign_key: true
      t.references :shipmentstatus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
