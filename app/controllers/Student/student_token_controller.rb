class Student::StudentTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token

  def find
  @student = JSONparse(Student.find_by(params[:student][:email]))
  if @student
    render json: @student
  else
    @errors = @student.errors.full_messages
    render json: @errors
  end
 end
end
