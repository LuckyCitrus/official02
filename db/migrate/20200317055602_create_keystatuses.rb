class CreateKeystatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :keystatuses do |t|
      t.string :keystatus

      t.timestamps
    end
  end
end
