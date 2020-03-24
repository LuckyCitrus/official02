class AddCountryRefToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :country, null: false, foreign_key: true
  end
end
