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
    @event = Event.find(JSON.parse(params['id']))
    @event.update
  end

  def destroy
      @event = Event.find(JSON.parse(params['id']))
      @event.destroy
  end

    private

    def event_params
      params.require(:event).permit( :name, :date, :time, :body, :company_id, :contact_id, :cohort_id  )
    end

end
