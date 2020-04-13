class ChangeContainersFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :containers, :company_id, 1
    change_column_default :containers, :shipment_id, 1

  end
end
