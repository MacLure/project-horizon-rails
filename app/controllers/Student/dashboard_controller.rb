class Student::DashboardController < ApplicationController
  def index

    @admins = Admin.all
    @cohorts = Cohort.all

    @students = Student.all
    @student_notes = Student_note.all

    @assignments = Assignment.all
    @submissions = Submission.all
    @submission_comments = Submission_comment.all

    @company_notes = Company_note.all
    @contact_notes = Contact_note.all

    @events = Event.all

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
