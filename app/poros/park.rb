class Park 
  attr_reader :full_name, 
              :description,
              :directions_info,
              :standard_hours
  def initialize(data)
    @full_name = data[:fullName]
    @description = data[:description]
    @directions_info = data[:directionsInfo]
    @standard_hours = data[:operatingHours][0][:standardHours]
  end

  def format_days
    arr = []
    hours = @standard_hours.each_pair { |key, value| arr << "#{key}: #{value}" }
    arr 
  end
end