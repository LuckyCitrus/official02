class AddOrderRefToPicture < ActiveRecord::Migration[6.0]
  def change
    add_reference :pictures, :order, null: true, foreign_key: true
  end
end
