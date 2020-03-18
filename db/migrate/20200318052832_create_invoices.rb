class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :invoicedate
      t.date :duedate
      t.references :customer, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.references :shipment, null: false, foreign_key: true
      t.references :auction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
