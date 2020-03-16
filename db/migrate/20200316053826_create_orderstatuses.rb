class CreateOrderstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :orderstatuses do |t|
      t.string :customertype

      t.timestamps
    end
  end
end
