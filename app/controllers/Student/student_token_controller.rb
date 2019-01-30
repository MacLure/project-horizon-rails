class Student::StudentTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token
  def current_student
  if params[:auth][:email] && !params[:auth][:is_admin]
  return @current_user = Student.find_by_email(params[:auth][:email])
else
  return @current_user = nil
  end
end
end
