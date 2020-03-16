class CreateCustomerstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :customerstatuses do |t|
      t.string :customerstatus

      t.timestamps
    end
  end
end
