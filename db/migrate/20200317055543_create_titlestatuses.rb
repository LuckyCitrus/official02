class CreateTitlestatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :titlestatuses do |t|
      t.string :titlestatus

      t.timestamps
    end
  end
end
