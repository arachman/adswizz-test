class CreateDeliveryLimitation < ActiveRecord::Migration
  def up
    create_table :delivery_limitations do |t|
      t.string :name
      t.integer :geo_region_limitation_id
    end
  end

  def down
    drop_table :delivery_limitation
  end
end
