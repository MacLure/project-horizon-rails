class Student::DashboardController < ApplicationController
  before_action :authenticate_student

  def index

    @cohort = current_student.cohort
    @students = @cohort.students
    @assignments = current_student.assignments
    @submissions = current_student.submissions
    # @submission_comments = current_student.submission_comments
    @events = current_student.events

    # puts "Inside `StudentsController#index`"

    # puts params.inspect

    # @student = Student.from_token_payload params["token"]
    # puts current_student


    render json: {
      student: current_student,
      cohort: @cohort,
      assignments: @assignments,
      submissions: @submissions,
      # submission_comments: @submission_comments,
      events: @events
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
