class EditOrderinvoicesIncremental < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up { execute "ALTER SEQUENCE orderinvoices_id_seq RESTART WITH 100" }
    end
  end
end
