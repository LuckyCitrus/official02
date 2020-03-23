class AddInvoiceRefToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :invoice, null: false, foreign_key: true
  end
end
