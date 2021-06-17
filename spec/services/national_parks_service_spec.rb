require 'rails_helper'


RSpec.describe NationalParksService do
  it 'can get coordinates for a location', :vcr do

    state = 'CO'
    response = NationalParksService.state_search(state)

    expect(response).to be_a Hash
    expect(response).to have_key(:total)
    expect(response[:total]).to be_a String
    expect(response[:data].first).to be_a Hash

    result = response[:data].first
    # binding.pry
    expect(result).to have_key(:fullName)
    expect(result[:fullName]).to be_an String
    # expect(result).to have_key(:latLng)
    # expect(result[:latLong]).to be_a String
    # expect(result).to have_key(:description)
    # expect(result[:description]).to be_a String
    # expect(result).to have_key(:directions_url)
    # expect(result[:directions_url]).to be_a String
    # expect(result).to have_key(:address)
    # expect(result[:address]).to be_an Array
  end
end
