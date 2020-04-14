class ChangeWarehousesFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :warehouses, :location_id, 1

  end
end
