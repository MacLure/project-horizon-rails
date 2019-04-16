class Admin::SubmissionCommentsController < ApplicationController
  before_action :authenticate_admin
  
  def create
    submission_comment = JSON.parse(params['submission_comment'])
    submission_comment = SubmissionComment.create(submission_comment)
    render json: submission_comment
  end

  def update
    @submission_comment = SubmissionComment.find(JSON.parse(params['id']))
    @submission_comment.update(submission_comment_params)
  end

  def destroy
      @submission_comment = SubmissionComment.find(JSON.parse(params['id']))
      @submission_comment.destroy
  end

  private

  def submission_comment_params
    params.require(:submission_comment).permit( :admin_id, :submission_id, :body)
  end
end
