class AddContainernumAutonumber < ActiveRecord::Migration[6.0]
  def change
=begin     reversible do |dir|
      change_column :containers, :containernum, 'integer USING CAST(containernum AS integer)'
      dir.up { execute "CREATE SEQUENCE containernum_seq OWNED BY containers.containernum INCREMENT BY 1009 START WITH 843901"
        execute "ALTER TABLE containers ALTER COLUMN containernum SET DEFAULT NEXTVAL('containernum_seq');"
        }
    end
=end
  end
end
