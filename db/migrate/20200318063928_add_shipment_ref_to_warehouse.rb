class AddShipmentRefToWarehouse < ActiveRecord::Migration[6.0]
  def change
    add_reference :warehouses, :shipment, null: false, foreign_key: true
  end
end
