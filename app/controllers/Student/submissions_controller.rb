class Student::SubmissionsController < ApplicationController
  before_action :authenticate_student

  def index
      @submission = Submission.all
      render json: @submission
    end

    def create
      submission = JSON.parse(params['submission'])
      submission = Submission.create(submission)
      render json: submission
    end

    def show
      render json: @submission
    end

    def update
      @submission = Submission.find(JSON.parse(params['id']))
      @submission.update
    end

    def destroy
        @submission = Submission.find(JSON.parse(params['id']))
        @submission.destroy
    end

    private

    def event_params
      params.require(:submission).permit( :assignment_id, :student_id, :url, :body, :is_approved )
    end

end
