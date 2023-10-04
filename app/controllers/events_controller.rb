class EventsController < ApplicationController
  def index
    @events = Event.all.sort
    render :index
  end

  # def test
  #   count = 1
  #   response = HTTP.get("")

  #   data = response.parse(:json)
  #   data["weeks"].each do |week|
  #     week["games"].each do |game|
  #       event = Event.find_by(id: count)
  #       event.update(
  #         game_id: game["id"],
  #         status: game["status"],
  #       )

  #       event.save

  #       count += 1
  #     end
  #   end
  #   render json: { message: "Completed" }
  # end
end
