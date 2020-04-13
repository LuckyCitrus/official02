class ChangeEmployeesFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :employees, :employeestatus_id, 0
    change_column_default :employees, :department_id, 0
    change_column_default :employees, :user_id, 0
  end
end
