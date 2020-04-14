class ChangeInvoiceShipmentsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :invoiceshipments, :shipment_id, 1
    change_column_default :invoiceshipments, :invoice_id, 1

  end
end
