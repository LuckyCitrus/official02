class EditDummyusersIncremental < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up { execute "ALTER SEQUENCE dummyusers_id_seq RESTART WITH 100" }
    end
  end
end
