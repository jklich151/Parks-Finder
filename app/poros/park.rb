class Park
  attr_reader :name,
              :description,
              :directions_info,
              :standard_hours

  def initialize(attributes)
    @name = attributes[:name]
    @description = attributes[:description]
    @directions_info = attributes[:directionsInfo]
    @standard_hours = attributes[:operatingHours][0][:standardHours]
  end
end
