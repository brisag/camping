require 'rails_helper'

RSpec.describe 'NatParks API - Endpoints', type: :request do
  xit "Retrieve campgrounds from search", :vcr do

    get '/api/v1/campgrounds?stateCode=CO&q=dinosaur'

    expect(response).to be_successful

    campground = JSON.parse(response.body, symbolize_names: true)
    binding.pry

    expect(campground).to be_a Hash
    expect(campground).to have_key(:total)
    expect(campground[:total]).be_a String
    expect(campground).to have_key(:limit)
    expect(campground[:limit]).be_a String
    expect(campground).to have_key(:start)
    expect(campground[:limit]).be_a String
    expect(campground).to have_key(:data)
    expect(campground[:data]).be_a Hash

    ground_data = campground[:data].first

    expect(ground_data).to have_key(:name)
    expect(ground_data[:name]).to be_a(String)
    expect(ground_data).to have_key(:parkCode)
    expect(ground_data[:parkCode]).to be_an(String)
    expect(ground_data).to have_key(:description)
    expect(ground_data[:description]).to be_an(String)
    expect(ground_data).to have_key(:reservationInfo)
    expect(ground_data[:reservationInfo]).to be_an(String)


    expect(ground_data).to have_key(:amenities)
    expect(ground_data[:amenities]).to be_a(Hash)
    expect(ground_data[:amenities]).to have_key(:toilets)
    expect(ground_data[:amenities][:toilets]).to be_an(String)
    expect(ground_data[:amenities]).to have_key(:cellPhoneReception)
    expect(ground_data[:amenities][:cellPhoneReception]).to be_an(String)
    expect(ground_data[:amenities]).to have_key(:potableWater)
    expect(ground_data[:amenities][:potableWater]).to be_an(String)

    expect(ground_data).to have_key(:fees)
    expect(ground_data[:fees]).to be_an(Array)

    expect(ground_data[:fees]).to have_key(:cost)
    expect(ground_data[:fees][:cost]).to be_an(String)
    expect(ground_data[:fees]).to have_key(:description)
    expect(ground_data[:fees][:description]).to be_an(String)
    expect(ground_data[:fees]).to have_key(:title)
    expect(ground_data[:fees][:title]).to be_an(String)

    expect(ground_data).to have_key(:numberOfSitesReservable)
    expect(ground_data[:numberOfSitesReservable]).to be_an(Array)
    expect(ground_data).to have_key(:numberOfSitesFirstComeFirstServe)
    expect(ground_data[:numberOfSitesFirstComeFirstServe]).to be_an(Array)
    expect(ground_data).to have_key(:fees)
  end
end
