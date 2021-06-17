class Park
  attr_reader :id, :name, :description, :directions_url, :hours, :code, :lat_long, :address
  def initialize(data)
    # binding.pry
    @id = data[:id]
    @name = data[:fullName]
    @lat_long = data[:latLong]
    @address = data[:addresses].first
    @code = data[:parkCode]
    @description = data[:description]
    @directions_url = data[:directionsUrl]
    @address = format_hours(data[:operatingHours].first[:standardHours])
  end

  def format_hours(data)
    real = {}
    data.each do |day, hours|
      real[day.capitalize] = hours
    end
    real
  end
end
