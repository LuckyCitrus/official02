class ChangeCustomersFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :customers, :customertype_id, 1
    change_column_default :customers, :customerstatus_id, 1
    change_column_default :customers, :country_id, 1
    change_column_default :customers, :user_id, 1
  end
end
