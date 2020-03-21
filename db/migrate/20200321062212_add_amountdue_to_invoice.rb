class AddAmountdueToInvoice < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :amountdue, :decimal
  end
end
