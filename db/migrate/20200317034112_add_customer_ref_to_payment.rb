class AddCustomerRefToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :customer, null: true, foreign_key: true
  end
end
