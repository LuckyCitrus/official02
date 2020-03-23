class CreatePaymentmethods < ActiveRecord::Migration[6.0]
  def change
    create_table :paymentmethods do |t|
      t.string :paymenttype

      t.timestamps
    end
  end
end
