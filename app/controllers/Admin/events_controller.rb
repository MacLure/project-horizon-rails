class Admin::EventsController < ApplicationController
  before_action :authenticate_admin
  def index
      @event = Event.all
      render json: @event
    end

    def create
      event = JSON.parse(params['event'])
      event = Event.create(event)
      render json: event
    end

    def show
    render json: @event
  end

  def update
    if @event.update(cohort_params)
      render json: @event
    else
      render json: { message: @event.errors }, status: 400
    end
  end

  def destroy
    if @event.destroy
      render json: { message: "Successfully removed event." }, status: 204
    else
      render json: { message: "Unable to remove event" }, status: 400
    end
  end

    private

    def event_params
      params.require(:event).permit( :name, :date, :time, :body, :company_id, :contact_id, :cohort_id  )
    end

end
