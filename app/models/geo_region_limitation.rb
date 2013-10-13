class GeoRegionLimitation < ActiveRecord::Base
  include DeliveryLimitationHelper
  has_many :geo_limitation_countries
  has_many :countries, through: :geo_limitation_countries

  def get_data
    self.countries.map(&:name)
  end
end
