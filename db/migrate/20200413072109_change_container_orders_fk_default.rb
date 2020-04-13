class ChangeContainerOrdersFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :containerorders, :container_id, 0
    change_column_default :containerorders, :order_id, 0

  end
end
