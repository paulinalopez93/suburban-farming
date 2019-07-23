class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.save
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating_stars)
  end
end
