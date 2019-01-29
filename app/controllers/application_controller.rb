class ApplicationController < ActionController::API
  before_action :cors_set_access_control_headers
  include Knock::Authenticable


  def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  # def authenticate_method
  #   if is_admin == true
  #     authenticate_admin = true
  #   elsif is_admin == false
  #     authenticate_student = false
  #   end
  # end

    private

    def logged_in?
      !!current_user
    end
end
