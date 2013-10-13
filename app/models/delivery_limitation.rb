class DeliveryLimitation < ActiveRecord::Base
  has_many :geo_region_limitations
end
