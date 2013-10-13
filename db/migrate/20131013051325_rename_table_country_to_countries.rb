class RenameTableCountryToCountries < ActiveRecord::Migration
  def up
    rename_table :country, :countries
  end

  def down
    rename_table :countries, :country
  end
end
