class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user_id: current_user.id)
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

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    if favorite[:user_id] == current_user.id
      favorite.destroy
      render json: { message: "Favorite destroyed" }
    else
      render json: { error: "You may only delete your own favorites" }
    end
  end
end
