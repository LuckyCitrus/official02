class CreateDummyusers < ActiveRecord::Migration[6.0]
  def change
    create_table :dummyusers do |t|
      t.string :username
      t.string :password
      t.references :dummyrole, null: false, foreign_key: true

      t.timestamps
    end
  end
end
