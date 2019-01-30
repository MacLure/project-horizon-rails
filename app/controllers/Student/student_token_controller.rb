class Student::StudentTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token
  after_action :current_student

  def current_student
  @student = JSON.parse(Student.find_by(params[:auth][:email]))
  if @student
    render json: @student
  else
    @errors = @student.errors.full_messages
    render json: @errors
  end
 end
end
