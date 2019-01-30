class Student::StudentTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token
  def current_student
  return unless params[:auth][:email] && !params[:auth][:is_admin]
  @current_user ||= Student.find_by_email(params[:auth][:email])
  end

end
