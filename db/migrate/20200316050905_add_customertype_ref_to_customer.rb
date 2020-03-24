class AddCustomertypeRefToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :customertype, null: false, foreign_key: true
  end
end
