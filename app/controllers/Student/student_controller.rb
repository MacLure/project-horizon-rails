class Student::StudentController < ApplicationController
  before_action :authenticate_student
  def index
      @cohort = current_user.cohort
      @students = @cohort.students
      @assignments = @cohort.assignments
      @submissions = @cohort.submissions
      @submission_comments = current_user.submission_comments
      @events = @cohort.events


      render json: {cohorts: @cohort, students: @students, assignments: @assignments, submissions:
        @submissions, submission_comments: @submission_comments, events: @events} 

    end

    def create
      student = JSON.parse(params['student'])
      student = Student.create(student)
      render json: student
    end

    def show
      @student = Student.find(params["id"])
    end

    def update
      student = Student.find(params["id"])
      student.update_attributes(student_params)
    end

    def destroy
      Student.destroy(params[:id])
    end

    private

    def student_params
      params.require(:student).permit( :first_name, :last_name, :phone, :email, :cohort_id, :image_url)
    end

end
