class ChangeShipmentsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :shipments, :shipmentmethod_id, 0
    change_column_default :shipments, :warehouse_id, 0
    change_column_default :shipments, :shipmentstatus_id, 0
  end
end
