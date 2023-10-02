class EventsController < ApplicationController
  def index
    @events = Event.all.sort
    @events.each do |event|
    end
    render :index
  end
end
