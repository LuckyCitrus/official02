class CreateInvoiceshipments < ActiveRecord::Migration[6.0]
  def change
    create_table :invoiceshipments do |t|
      t.references :shipment, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
