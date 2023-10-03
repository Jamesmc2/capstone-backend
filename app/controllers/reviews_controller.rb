class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(event_id: params[:id])
    render :index
  end

  def create
    @review = Review.create!(
      text: params[:text],
      user_id: current_user.id,
      event_id: params[:event_id],
    )
    render :show
  end
end
