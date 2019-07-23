class ReviewsController < ApplicationController
  before_action :set_review

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
  def set_review
    @review = Review.find(params[:id])
    #not sure if it should be params[:id] or params[:product_id]
  end
end
