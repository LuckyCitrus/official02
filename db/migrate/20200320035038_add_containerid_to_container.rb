class AddContaineridToContainer < ActiveRecord::Migration[6.0]
  def change
    add_column :containers, :containerid, :string
  end
end
