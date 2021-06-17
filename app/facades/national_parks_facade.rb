class NationalParksFacade
  class << self
    def get_parks(state)
      state_data = Search.find_by(state_code: state)
      if state_data.nil?
        results = NationalParksService.state_search(state)
        state_data = Search.new(state_code: state, parks_data: parks[:data])
        state_data.save
      end
      state_data.parks_data.map do |park|
        Park.new(park.symbolize_keys)
      # results[:data].map do |park|
      #   Park.new(park)
      end
    end

    def campground_info(state, keyword)
      search = NationalParksService.campground_search(state, keyword)
      search[:data].map do |campground_info|
        Camp.new(campground_info)
      end
    end
  end
end


# binding.pry

      # binding.pry
# state_data = Search.find_by(state_code: state)
# binding.pry
# if state_data.nil?
# parks = NationalParksService.state_search(state)
# state_data = Search.new(state_code: state, parks_data: parks[:data])
# state_data.save
# end
# binding.pry
# state_data.parks_data.map do |park|
#   Park.new(park.symbolize_keys)
