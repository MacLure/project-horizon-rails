class ApplicationController < ActionController::API
  before_action :cors_set_access_control_headers
  include Knock::Authenticable



  def handle_options_request
    head(:ok) if request.request_method == "OPTIONS"
  end

  def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  def authenticate_admin
    if (params['is_admin']) == true && (params['token'])
      return true
    else
      return false
    end
  end

  def authenticate_student
    if (params['is_admin']) == false && (params['token'])
      return true
    else
      return false
    end
  end
  # end
  # def authenticate_admin_admin
  #   authenticate_for Admin::Admin
  # end
  #
  # def authenticate_student_student
  #   authenticate_for Student::Student
  # end

    private



  # def current_user
  #   @current_user ||= Admin.find_by(JSON.parse(params['email'])
  # end





# elsif JSON.parse(params['is_admin'] == fa
#   authenticate_student = true
end
