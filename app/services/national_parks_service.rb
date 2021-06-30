class NationalParksService
  class << self
    def state_search(state)
      response = conn.get("/api/v1/parks?stateCode=#{state}") do |req|
        req.params['api_key'] = ENV['NPS_KEY']
        req.params['stateCode'] = state
      end
      # binding.pry
      parse_data(response)
    end

    def campground_search(state, keyword)
      response = conn.get("/api/v1/campgrounds?stateCode=#{state}&q=#{keyword}") do |req|
        req.params['api_key'] = ENV['NPS_KEY']
        req.params['stateCode'] = state
        req.params['key'] = keyword
      end
      # binding.pry
      parse_data(response)
    end


    private

    def conn
      Faraday.new(url: 'https://developer.nps.gov')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
