class Admin::AssignmentsController < ApplicationController
  before_action :authenticate_admin
  def index
      @assignemnt = Assignment.all
      render json: @assignemnt
    end

    def create
      assignemnt = JSON.parse(params['assignemnt'])
      assignemnt = Assignment.create(assignemnt)
      render json: assignemnt
    end

    def show
    render json: @assignemnt
  end

  def update
    if @assignemnt.update(assignemnt_params)
      render json: @assignemnt
    else
      render json: { message: @assignemnt.errors }, status: 400
    end
  end

  def destroy
    if @assignemnt.destroy
      render json: { message: "Successfully removed assignemnt." }, status: 204
    else
      render json: { message: "Unable to remove assignemnt" }, status: 400
    end
  end

    private

    def assignemnt_params
      params.require(:assignemnt).permit( :cohort_id, :name, :body, :due_date )
    end
end
