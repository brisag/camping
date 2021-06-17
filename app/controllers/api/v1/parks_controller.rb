class Api::V1::ParksController < ApplicationController
  def index
    parks = NationalParksFacade.get_parks(params[:stateCode])
    # binding.pry
    render json: ParkSerializer.new(parks)
  end
end
