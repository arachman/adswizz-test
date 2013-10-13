class DeliveryLimitation < ActiveRecord::Base
  has_many :geo_region_limitations
  def build_args
    return self.class.reflect_on_all_associations(:has_many).map(&:name).collect{ |assc|
      self.send(assc).map(&:build_params)
    }.flatten
  end
end
