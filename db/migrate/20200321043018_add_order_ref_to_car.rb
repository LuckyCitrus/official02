class AddOrderRefToCar < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :order, null: true, foreign_key: true
  end
end
