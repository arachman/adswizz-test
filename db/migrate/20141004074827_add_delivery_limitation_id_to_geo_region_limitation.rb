class AddDeliveryLimitationIdToGeoRegionLimitation < ActiveRecord::Migration
  def change
    add_column :geo_region_limitations, :delivery_limitation_id, :integer
  end
end
