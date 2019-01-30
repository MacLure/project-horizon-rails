class Student::DashboardController < ApplicationController
  before_action :authenticate_student

  # def current
  #     render json: current_user.as_json(only: %i(email))
  # end




  # def current_student
  # student = Student.find_by(JSON.parse(params['email']))
  # end

  def index


    # @admins = Admin.all
    # @cohorts = Cohort.all
    #
    # @students = Student.all
    # @student_notes = StudentNote.all
    #
    # @assignments = Assignment.all
    # @submissions = Submission.all
    # @submission_comments = SubmissionComment.all
    #
    # @company_notes = CompanyNote.all
    # @contact_notes = ContactNote.all
    #
    # @events = Event.all
    #



    @cohort = Student.find(JSON.parse(params['email'])).cohort
    @students = @cohort.students
    @assignments = @cohort.assignments
    @submissions = @cohort.submissions
    # @submission_comments = @current_student_student.submission_comments
    @events = @cohort.events




    render json: {
      admins: @admins,
      cohorts: @cohorts,
      students: @students,
      student_notes: @student_notes,
      assignments: @assignments,
      submissions: @submissions,
      submission_comments: @submission_comments,
      company_notes: @company_notes,
      contact_notes: @contact_notes,
      events: @events,
    }

  end
end
