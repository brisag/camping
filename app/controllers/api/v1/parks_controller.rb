class Api::V1::ParksController < ApplicationController
  def index
    if parks = NationalParksFacade.get_parks(params[:stateCode])
      render json: ParkSerializer.new(parks)
    else
      render json: { error: "Please enter valid state code" }, status: :bad_request
  end
end
