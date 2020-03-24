class RenameOrderstatusTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :orderstatuses, :customertype, :orderstatus
  end
end
