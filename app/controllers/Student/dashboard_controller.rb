class Student::DashboardController < ApplicationController
  def index

    @cohort = current_user.cohort
    @students = @cohort.students
    @assignments = @cohort.assignments
    @submissions = @cohort.submissions
    @submission_comments = current_user.submission_comments
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
