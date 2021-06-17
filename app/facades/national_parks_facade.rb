class NationalParksFacade
  class << self
    def get_parks(state)
        results = NationalParksService.state_search(state)
        # binding.pry
        results[:data].map do |park|
          Park.new(park)
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
      end
    end
  end
end
