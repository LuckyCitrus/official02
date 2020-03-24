class AddPaymentnumToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :paymentnum, :string
  end
end
