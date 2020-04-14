class ChangeShipmentsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :shipments, :shipmentmethod_id, 1
    change_column_default :shipments, :warehouse_id, 1
    change_column_default :shipments, :shipmentstatus_id, 1
  end
end
