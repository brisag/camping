require 'rails_helper'

RSpec.describe 'Parks API - Endpoints', type: :request do
  it "Retrieve parks from search", :vcr do

    get '/api/v1/parks?stateCode=CO'

    expect(response).to be_successful

    parks = JSON.parse(response.body, symbolize_names: true)
    expect(parks).to be_a Hash
    expect(parks).to have_key(:data)
    expect(parks[:data]).to be_an Array

    result = parks[:data].first
    expect(result).to have_key(:id)
    expect(result[:id]).to be_a String
    expect(result).to have_key(:type)
    expect(result[:type]).to be_a String
    expect(result).to have_key(:attributes)
    expect(result[:attributes]).to be_a Hash

    info = parks[:data].first[:attributes]
    expect(info).to have_key(:name)
    expect(info[:name]).to be_a(String)
    expect(info).to have_key(:code)
    expect(info[:code]).to be_an(String)
    expect(info).to have_key(:directions_url)
    expect(info[:directions_url]).to be_an(String)
    expect(info).to have_key(:hours)
    expect(info[:hours]).to be (nil)
  end
end
