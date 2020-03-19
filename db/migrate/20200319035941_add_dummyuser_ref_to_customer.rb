class AddDummyuserRefToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :dummyuser, null: true, foreign_key: true
  end
end
