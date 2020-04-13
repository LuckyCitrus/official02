class ChangeCustomersFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :customers, :customertype_id, 0
    change_column_default :customers, :customerstatus_id, 0
    change_column_default :customers, :country_id, 0
    change_column_default :customers, :user_id, 0
  end
end
