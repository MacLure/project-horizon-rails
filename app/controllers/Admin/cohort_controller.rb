class Admin::CohortController < ApplicationController
  def index
      @cohorts = Cohort.all
      render json: @cohorts
    end

    def create
      cohort = JSON.parse(params['cohort'])
     # puts "@@@@@@@@@@@@@@  #{params['cohort']} @@@@@@@@@@@@@   @@@@@@@@@..........@@@ #{val["name"]}"
      cohort = Cohort.create(cohort)
      render json: cohort
    end

    def show
    render json: @chort
  end

  def update
    if @cohort.update(cohort_params)
      render json: @cohort
    else
      render json: { message: @cohort.errors }, status: 400
    end
  end

  def destroy
    if @cohort.destroy
      render json: { message: "Successfully removed cohort." }, status: 204
    else
      render json: { message: "Unable to remove cohort" }, status: 400
    end
  end

    private

    def cohort_params
      params.require(:cohort).permit( :start_date, :end_date, :name, :course_type)
    end

end
