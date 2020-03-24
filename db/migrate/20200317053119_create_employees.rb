class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :empfname
      t.string :emplname
      t.string :address
      t.string :email
      t.string :phone
      t.string :title
      t.date :hiredate
      t.references :company, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :employeestatus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
