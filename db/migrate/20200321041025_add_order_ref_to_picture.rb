class AddOrderRefToPicture < ActiveRecord::Migration[6.0]
  def change
    add_reference :pictures, :order, null: false, foreign_key: true
  end
end
