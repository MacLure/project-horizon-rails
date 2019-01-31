class Student::DashboardController < ApplicationController
  before_action :authenticate_student

  def index

    @cohort = current_student.cohort
    # @students = @cohort.students
    # @assignments = @cohort.assignments
    # @submissions = @cohort.submissions
    # # @submission_comments = @current_student_student.submission_comments
    # @events = @cohort.events

    puts "Inside `StudentsController#index`"

    # puts params.inspect

    # @student = Student.from_token_payload params["token"]
    puts current_student


    render json: {
      foo: "bar",
      cohort: @cohort
      student: current_student
      # admins: @admins,
      # cohorts: @cohorts,
      # students: @students,
      # student_notes: @student_notes,
      # assignments: @assignments,
      # submissions: @submissions,
      # submission_comments: @submission_comments,
      # company_notes: @company_notes,
      # contact_notes: @contact_notes,
      # events: @events,
    }

  end
end
