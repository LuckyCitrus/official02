class RemoveShipmentFromInvoice < ActiveRecord::Migration[6.0]
  def change
    remove_reference :invoices, :shipment, null: false, foreign_key: true
  end
end
