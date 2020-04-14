class ChangeInvoicesFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :invoices, :customer_id, 1
    change_column_default :invoices, :employee_id, 1
    change_column_default :invoices, :invoicestatus_id, 1

  end
end
