class AddInvoiceRefToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :invoice, null: true, foreign_key: true
  end
end
