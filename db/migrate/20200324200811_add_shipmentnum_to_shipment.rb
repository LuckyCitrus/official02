class AddShipmentnumToShipment < ActiveRecord::Migration[6.0]
  def change
    add_column :shipments, :shipmentnum, :string
  end
end
