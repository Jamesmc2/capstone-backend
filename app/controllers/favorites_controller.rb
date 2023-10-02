class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render :index
  end

  def create
    if current_user
      Favorite.create!(
        user_id: current_user.id,
        event_id: params[:id],
      )
      render json: { message: "Event favorited" }
    end
  end
end
