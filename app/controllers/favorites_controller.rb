class FavoritesController < ApplicationController
  def create
    if current_user
      Favorite.create!(
        user_id: current_user.id,
        event_id: params[:event_id],
      )
      render json: { message: "Event favorited" }
    end
  end
end
