class AddShipmentRefToInvoice < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :shipment, null: true, foreign_key: true
  end
end
