class AddShipmentRefToContainer < ActiveRecord::Migration[6.0]
  def change
    add_reference :containers, :shipment, null: false, foreign_key: true
  end
end
