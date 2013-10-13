class GeoLimitationCountry < ActiveRecord::Base
  belongs_to :geo_region_limitation
  belongs_to :country
end
