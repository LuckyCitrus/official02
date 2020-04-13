class ChangeInvoiceShipmentsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :invoiceshipments, :shipment_id, 0
    change_column_default :invoiceshipments, :invoice_id, 0

  end
end
