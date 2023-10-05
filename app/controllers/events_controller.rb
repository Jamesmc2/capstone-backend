require_relative '../../.api_key.rb'

class EventsController < ApplicationController
  def index
    @events = Event.all.sort
    render :index
  end

  def stats
    event = Event.find_by(id: params[:id])
    response = HTTP.get("https://api.sportradar.us/nfl/official/trial/v7/en/games/#{event["game_id"]}/boxscore.json?api_key=#{$api_key}")

    render json: response.parse(:json)
  end

  # def test
  #   count = 1
  #   week_number = 0
  #   response = HTTP.get("https://api.sportradar.us/nfl/official/trial/v7/en/games/current_season/schedule.json?api_key=#{$api_key}")

  #   data = response.parse(:json)
  #   data["weeks"].each do |week|
  #     week_number = week["sequence"]
  #     week["games"].each do |game|
  #       event = Event.find_by(id: count)
  #       event.update(
  #        week: week_number
  #       )

  #       event.save

  #       count += 1
  #     end
  #   end
  #   render json: { message: "Completed" }
  # end
end
