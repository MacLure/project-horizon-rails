class DashboardsController < ApplicationController
  def index

    @admins = Admin.all
    @cohorts = Cohort.all
    @students = Student.all

    render json: {admins: @admins, cohorts: @cohorts, students: @students}

  end
end
