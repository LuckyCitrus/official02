class RemoveOrderFromInvoice < ActiveRecord::Migration[6.0]
  def change
    remove_reference :invoices, :order, null: false, foreign_key: true
  end
end
