class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.date :date
      t.integer :amount
      t.references :paymentstatus, null: false, foreign_key: true
      t.references :paymentmethod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
