class ChangeOrdersFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :customer_id, 1
    change_column_default :orders, :orderstatus_id, 1
  end
end
