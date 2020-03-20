class CreateHelloos < ActiveRecord::Migration[6.0]
  def change
    create_table :helloos do |t|
      t.string :worldd

      t.timestamps
    end
  end
end
