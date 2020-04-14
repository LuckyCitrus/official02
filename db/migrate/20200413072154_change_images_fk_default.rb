class ChangeImagesFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :images, :order_id, 1

  end
end
