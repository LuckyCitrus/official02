class CreatePaymentstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :paymentstatuses do |t|
      t.string :paymentstatus

      t.timestamps
    end
  end
end
