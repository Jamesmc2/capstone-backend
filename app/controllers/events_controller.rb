class EventsController < ApplicationController
  def index
    @events = Event.all.sort

    render :index
  end
end
