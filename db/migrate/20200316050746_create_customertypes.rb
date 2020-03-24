class CreateCustomertypes < ActiveRecord::Migration[6.0]
  def change
    create_table :customertypes do |t|
      t.string :customertype

      t.timestamps
    end
  end
end
