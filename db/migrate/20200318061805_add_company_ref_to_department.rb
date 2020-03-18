class AddCompanyRefToDepartment < ActiveRecord::Migration[6.0]
  def change
    add_reference :departments, :company, null: true, foreign_key: true
  end
end
