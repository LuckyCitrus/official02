class AddPaymentnumAutonumber < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_column :payments, :paymentnum, 'integer USING CAST(paymentnum AS integer)'
      dir.up { execute "CREATE SEQUENCE paymentnum_seq OWNED BY payments.paymentnum INCREMENT BY 641 START WITH 300328"
        execute "ALTER TABLE payments ALTER COLUMN paymentnum SET DEFAULT NEXTVAL('paymentnum_seq');"
        }
    end
  end
end
