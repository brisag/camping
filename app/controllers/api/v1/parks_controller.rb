class Api::V1::ParksController < ApplicationController
  def index
    # binding.pry
    search = Search.new(state_code: params[:stateCode])
    unless search.valid?
      render json: { error: search.errors.full_messages }, status: :bad_request
      return
    end
    if parks = NationalParksFacade.get_parks(search.state_code)
      render json: ParkSerializer.new(parks)
    end
  end
end
