class Api::V1::CampgroundController < ApplicationController
  def index
    parks = NationalParksFacade.campground_info(params[:stateCode], params[:q])
    render json: CampSerializer.new(parks)
  end
end
