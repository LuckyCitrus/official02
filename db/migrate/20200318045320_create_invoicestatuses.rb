class CreateInvoicestatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :invoicestatuses do |t|
      t.string :invoicestatus

      t.timestamps
    end
  end
end
