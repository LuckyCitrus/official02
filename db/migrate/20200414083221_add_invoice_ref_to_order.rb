class AddInvoiceRefToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :invoice, null: true, foreign_key: true
  end
end
