class RemovePaymentFromInvoice < ActiveRecord::Migration[6.0]
  def change
    remove_reference :invoices, :payment, null: false, foreign_key: true
  end
end
