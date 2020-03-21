class RemoveShipmentFromWarehouse < ActiveRecord::Migration[6.0]
  def change
    remove_reference :warehouses, :shipment, null: false, foreign_key: true
  end
end
