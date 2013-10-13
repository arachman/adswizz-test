module DeliveryLimitationHelper
  def get_type
    self.class.to_s.gsub(/Limitation/,'').underscore.split('_').map(&:capitalize).join(':')
  end

  def build_params
    {
      :type => self.get_type,
      :logical => self.logical_op,
      :comparison => self.comparison_op,
      :data => self.get_data
    }
  end
end
