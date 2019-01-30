class Student::StudentTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token
  after_action :current_student

  def current_student
    return unless params[:auth][:email]
  @current_user ||= Student.find_by_email(params[:auth][:email])
  end
