class CreateGeoRegionLimitation < ActiveRecord::Migration
  def up
    create_table :geo_region_limitations do |t|
      t.string :name
      t.string :logical_op
      t.string :comparison_op
    end
  end

  def down
    drop_table :geo_region_limitations
  end
end
