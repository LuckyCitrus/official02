class ChangeCarsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :cars, :order_id, 0
    change_column_default :cars, :keystatus_id, 0
    change_column_default :cars, :titlestatus_id, 0

  end
end
