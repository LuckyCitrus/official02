class AddContainernumAutonumber < ActiveRecord::Migration[6.0]
  def change
=begin     reversible do |dir|
      change_column :containers, :containernum, 'integer USING CAST(containernum AS integer)'
      dir.up { execute "CREATE SEQUENCE containernum_seq OWNED BY containers.containernum INCREMENT BY 809 START WITH 705701"
        execute "ALTER TABLE containers ALTER COLUMN containernum SET DEFAULT NEXTVAL('containernum_seq');"
        }
    end
=end
  end
end
