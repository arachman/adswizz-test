class GeoRegionLimitation < ActiveRecord::Base
  include DeliveryLimitationHelper
  has_many :geo_limitation_countries
  has_many :countries, through: :geo_limitation_countries
  belongs_to :delivery_limitation

  def get_data
    self.countries.map(&:name)
  end
end
