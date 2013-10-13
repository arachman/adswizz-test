class CreateGeoLimitationCountry < ActiveRecord::Migration
  def up
    create_table :geo_limitation_countries do |t|
      t.integer :geo_region_limitation_id
      t.integer :country_id
    end
  end

  def down
    drop_table :geo_limitation_countries
  end
end
