class AddUserRefToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :user, null: true, foreign_key: true
  end
end
