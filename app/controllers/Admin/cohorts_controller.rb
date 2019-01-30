class Admin::CohortsController < ApplicationController
  before_action :authenticate_admin
  def index
      @cohorts = Cohort.all
      render json: @cohorts
    end

    def create
      cohort = JSON.parse(params['cohort'])
      cohort = Cohort.create(cohort)
      render json: cohort
    end

    def show
    render json: @cohort
  end

  def update
    if @cohort.update(cohort_params)
      render json: @cohort
    else
      render json: { message: @cohort.errors }, status: 400
    end
  end

  def destroy
      @cohort = Cohort.find(JSON.parse(params['cohort_id']))
      @cohort.destroy

  end

    private

    def cohort_params
      params.require(:cohort).permit( :start_date, :end_date, :name, :course_type)
    end

end
