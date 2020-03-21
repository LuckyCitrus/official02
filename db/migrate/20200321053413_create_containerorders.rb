class CreateContainerorders < ActiveRecord::Migration[6.0]
  def change
    create_table :containerorders do |t|
      t.references :container, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
