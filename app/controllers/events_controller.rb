class EventsController < ApplicationController
  def index
    @events = Event.all.sort
    @favorited_events = current_user.events
    render :index
  end
end
