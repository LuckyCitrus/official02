class AddDummyuserRefToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :dummyuser, null: true, foreign_key: true
  end
end
