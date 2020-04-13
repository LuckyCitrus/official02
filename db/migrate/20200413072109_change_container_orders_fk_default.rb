class ChangeContainerOrdersFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :containerorders, :container_id, 1
    change_column_default :containerorders, :order_id, 1

  end
end
