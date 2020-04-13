class ChangeOrderInvoicesFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orderinvoices, :order_id, 1
    change_column_default :orderinvoices, :invoice_id, 1

  end
end
