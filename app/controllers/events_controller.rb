require_relative '../../.api_key.rb'

class EventsController < ApplicationController
  def index
    @events = Event.where(week: params[:week]).sort
    render :index
  end

  def results
    event = Event.find_by(id: params[:id])
    response = HTTP.get("https://api.sportradar.us/nfl/official/trial/v7/en/games/#{event["game_id"]}/boxscore.json?api_key=#{$api_key}")

    render json: response.parse(:json)
  end

  def update
    count = 1
    response = HTTP.get("https://api.sportradar.us/nfl/official/trial/v7/en/games/current_season/schedule.json?api_key=#{$api_key}")

    data = response.parse(:json)
    data["weeks"].each do |week|
     
      week["games"].each do |game|
        event = Event.find_by(id: count)
        event.update(
         status: game["status"]
        )

        event.save

        count += 1
      end
    end
    render json: { message: "Completed" }
  end
end
