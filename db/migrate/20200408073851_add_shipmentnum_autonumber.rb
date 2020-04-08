class AddShipmentnumAutonumber < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_column :shipments, :shipmentnum, 'integer USING CAST(shipmentnum AS integer)'
      dir.up { execute "CREATE SEQUENCE paymentnum_seq OWNED BY shipments.shipmentnum INCREMENT BY 775 START WITH 558320"
        execute "ALTER TABLE shipments ALTER COLUMN shipmentnum SET DEFAULT NEXTVAL('shipmentnum_seq');"
        }
    end
  end
end
