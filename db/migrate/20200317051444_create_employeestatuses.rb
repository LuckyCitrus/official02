class CreateEmployeestatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :employeestatuses do |t|
      t.string :employeestatus

      t.timestamps
    end
  end
end
