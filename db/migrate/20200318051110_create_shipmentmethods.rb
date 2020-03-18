class CreateShipmentmethods < ActiveRecord::Migration[6.0]
  def change
    create_table :shipmentmethods do |t|
      t.string :shipmentmethod

      t.timestamps
    end
  end
end
