class CreateContainers < ActiveRecord::Migration[6.0]
  def change
    create_table :containers do |t|
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
