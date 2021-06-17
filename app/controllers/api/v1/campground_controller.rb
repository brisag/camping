class Api::V1::CampgroundController < ApplicationController
  def index
    parks = NationalParksFacade.campground_info(params[:stateCode], params[:q])
    # binding.pry
    render json: CampSerializer.new(parks)
  end
end
