class AddInvoicenumToInvoice < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :invoicenum, :string
  end
end
