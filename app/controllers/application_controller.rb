class ApplicationController < ActionController::API
  before_action :cors_set_access_control_headers
  include Knock::Authenticable
  # helper_method :current_user

  def handle_options_request
    head(:ok) if request.request_method == "OPTIONS"
  end

  def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  # def authenticate_admin
  #   if JSON.parse(params['is_admin'] == true
  #     return true
  #   else
  #     return false
  #   end
  # end


    private

    # def logged_in?[]
    #   current_user
    # end
end




# elsif JSON.parse(params['is_admin'] == fa
#   authenticate_student = true
# end
