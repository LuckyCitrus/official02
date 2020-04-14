class AddContainerRefToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :container, null: true, foreign_key: true
  end
end
