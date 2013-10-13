class CreateCountry < ActiveRecord::Migration
  def up
    create_table :country do |t|
      t.string :name
    end
  end

  def down
    drop_table :country
  end
end
