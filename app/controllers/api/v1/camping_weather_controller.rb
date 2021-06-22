class Api::V1::CampingWeatherController < ApplicationController
  def create
    if User.find_by(api_key: trip_params[:api_key])
      road_trip = CampingWeatherFacade.trip(trip_params)
      render json: TripSerializer.new(road_trip)
    else
      render json: { error: 'invalid api_key' }, status: :unauthorized
    end
  end

  private

  def trip_params
    params.permit(:origin, :destination, :api_key)
  end
end
