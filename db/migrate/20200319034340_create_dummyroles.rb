class CreateDummyroles < ActiveRecord::Migration[6.0]
  def change
    create_table :dummyroles do |t|
      t.string :role

      t.timestamps
    end
  end
end
