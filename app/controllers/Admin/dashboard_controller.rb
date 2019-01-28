class Admin::DashboardController < ApplicationController
  def index

    @admins = Admin.all
    @cohorts = Cohort.all

    @students = Student.all
    @student_notes = Student_notes.all

    @assignments = Assignment.all
    @submissions = Submissions.all
    @submission_comments = Submission_comments.all

    @company_notes = Company_notes.all
    @contact_notes = Contact_notes.all

    @events = Events.all

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
