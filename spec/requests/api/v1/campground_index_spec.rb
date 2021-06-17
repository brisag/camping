require 'rails_helper'

RSpec.describe 'NatParks API - Endpoints', type: :request do
  it "Retrieve campgrounds from search", :vcr do

    get '/api/v1/campground?stateCode=CO&q=dinosaur'

    expect(response).to be_successful

    campground = JSON.parse(response.body, symbolize_names: true)
    expect(campground).to have_key(:data)
    expect(campground[:data]).to be_an Array

    ground_data = campground[:data].first
    expect(ground_data).to have_key(:id)
    expect(ground_data[:id]).to be_a(String)
    expect(ground_data).to have_key(:type)
    expect(ground_data[:type]).to be_an(String)
    expect(ground_data).to have_key(:attributes)
    expect(ground_data[:attributes]).to be_a(Hash)

    result = campground[:data].first[:attributes]

#
    expect(result).to have_key(:name)
    expect(result[:name]).to be_a(String)
    expect(result).to have_key(:description)
    expect(result[:description]).to be_an(String)
    expect(result).to have_key(:reservation)
    expect(result[:reservation]).to be_an(String)
    expect(result).to have_key(:regulations)
    expect(result[:regulations]).to be_an(String)
    expect(result).to have_key(:camp_url)
    expect(result[:camp_url]).to be_an(String)
    expect(result).to have_key(:hours)
    expect(result[:hours]).to be nil
    expect(result).to have_key(:restroom)
    expect(result[:restroom]).to be_an(Array)
    expect(result).to have_key(:water)
    expect(result[:water]).to be_an(Array)
    expect(result).to have_key(:fees)
    expect(result[:fees]).to be_an(String)
    expect(result).to have_key(:fee_info)
    expect(result[:fee_info]).to be_an(String)
  end
end
