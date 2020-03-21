class CreateOrderinvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :orderinvoices do |t|
      t.references :order, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
