class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_record
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


  def render_invalid_record(exception)
    render json: { error: exception.message }, status: :bad_request
  end

  def render_not_found_response
    render json: { message: "Not found", code: "not_found" }, status: :not_found
  end
end
