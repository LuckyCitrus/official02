class RemovePictureFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :picture, null: true, foreign_key: true
  end
end
