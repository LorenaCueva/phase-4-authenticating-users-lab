class ApplicationController < ActionController::API
  include ActionController::Cookies

rescue_from ActiveRecord::RecordNotFound, with: :not_found_response

def not_found_response
  render json: {error: "Record not Found"}, status: :not_found
end

end
