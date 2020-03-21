class RemoveContainerFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :container, null: false, foreign_key: true
  end
end
