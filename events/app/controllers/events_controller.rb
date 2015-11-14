class EventsController < ApplicationController
  def index
    @events = ['Event 1', 'Event 2', 'Event 3']
  end

  def edit
    @event = Event.find(params[:id])
  end
end
