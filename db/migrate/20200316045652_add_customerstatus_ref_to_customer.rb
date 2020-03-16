class AddCustomerstatusRefToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :customerstatus, null: true, foreign_key: true
  end
end
