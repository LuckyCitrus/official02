class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :vinnumber
      t.integer :year
      t.string :make
      t.string :model
      t.references :titlestatus, null: false, foreign_key: true
      t.references :keystatus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
