class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
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
