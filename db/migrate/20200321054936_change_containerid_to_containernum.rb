class ChangeContaineridToContainernum < ActiveRecord::Migration[6.0]
  def change
    rename_column :containers, :containerid, :containernum
  end
end
