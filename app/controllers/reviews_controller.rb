# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])

    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
