class Admin::AssignmentsController < ApplicationController
  before_action :authenticate_admin
  def index
    @assignemnt = Assignment.all
    render json: @assignemnt
  end

  def create
    assignemnt = JSON.parse(params['assignment'])
    assignemnt = Assignment.create(assignemnt)
    render json: assignemnt
  end

  def show
    render json: @assignemnt
  end

  def update
    @assignment = Assignment.find(JSON.parse(params['id']))
    @assignment.update(assignemnt_params)
  end

  def destroy
      @assignment = Assignment.find(JSON.parse(params['id']))
      @assignment.destroy
  end

  private

  def assignemnt_params
    params.require(:assignemnt).permit( :cohort_id, :name, :body, :due_date )
  end
end
