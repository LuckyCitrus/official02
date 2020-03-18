class AddInvoicestatusRefToInvoice < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :invoicestatus, null: true, foreign_key: true
  end
end
