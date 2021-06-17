class Park
  attr_reader :id, :name, :description, :directions_url, :hours, :code
  def initialize(data)
    @id = data[:id]
    @name = data[:fullName]
    @code = data[:parkCode]
    @description = data[:description]
    @directions_url = data[:directionsUrl]
    @hours = format_hours(data[:operatingHours].first[:standardHours])
  end

  def format_hours(data)
    real = {}
    data.each do |day, hours|
      real[day.capitalize] = hours
    end
    real
  end
end
