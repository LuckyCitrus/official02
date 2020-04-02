class EditCountryIncremental < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up { execute "ALTER TABLE countries AUTO_INCREMENT = 100" }
    end
  end
end
