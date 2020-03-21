class RemoveCarFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :car, null: true, foreign_key: true
  end
end
