class RemovePaymentFromInvoice < ActiveRecord::Migration[6.0]
  def change
    remove_reference :invoices, :payment, null: true, foreign_key: true
  end
end
