class Camp
  attr_reader :id, :name, :description, :reservation, :regulations, :camp_url, :hours, :restroom, :water, :fees, :fee_info
  def initialize(data)
    # binding.pry
    @id = data[:id]
    @name = data[:name]
    @description = data[:description]
    @camp_url = data[:url]
    @reservation = data[:reservationInfo]
    @regulations = data[:regulationsOverview]
    @restroom = data[:amenities][:toilets]
    @water = data[:amenities][:potableWater]
    @fees = data[:fees].first[:cost]
    @fee_info = data[:fees].first[:description]
  end
end
