class AddInvoicenumAutonumber < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_column :invoices, :invoicenum, 'integer USING CAST(invoicenum AS integer)'
      dir.up { execute "CREATE SEQUENCE invoicenum_seq OWNED BY invoices.invoicenum INCREMENT BY 503 START WITH 103732"
        execute "ALTER TABLE invoices ALTER COLUMN invoicenum SET DEFAULT NEXTVAL('invoicenum_seq');"
        }
    end
  end
end
