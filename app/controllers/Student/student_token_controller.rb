class Student::StudentTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token
  after_action :current_student

  def current_student
  @student = Student.find_by_email(params[:auth][:email])
  puts "----------------#{@student.inspect}"
  if @student
    return @student
  else
    @errors = @student.errors.full_messages
    return nil
  end
 end
end
