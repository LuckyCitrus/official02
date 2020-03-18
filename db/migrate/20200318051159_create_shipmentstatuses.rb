class CreateShipmentstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :shipmentstatuses do |t|
      t.string :shipmentstatus

      t.timestamps
    end
  end
end
