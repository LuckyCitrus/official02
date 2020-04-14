class CreateActiveInvoices < ActiveRecord::Migration[6.0]
  def change
    create_view :active_invoices, materialized: true
  end
end
