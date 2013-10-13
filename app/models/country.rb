class Country < ActiveRecord::Base
  has_many :geo_limitation_countries
  has_many :geo_region_limitations, through: :geo_limitation_countries
end
