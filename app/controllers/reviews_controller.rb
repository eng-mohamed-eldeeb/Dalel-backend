class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    begin
      review = Review.new(comment: params[:comment], stars: params[:stars], user_id: params[:user_id], product_id: params[:product_id])
      if review.save
        render json: {message: "Review created successfully", review:}, head: :created
      end
    rescue => e
      render json: {errorMessage: e.message}, head: :internal_server_error
    end
  end

  def get_reviews_by_product
    reviews = Review.where(product_id: params[:product_id]).all
    user_name = User.find(reviews.first.user_id).name
    reviews = reviews.map do |review|
      {
        id: review.id,
        comment: review.comment,
        stars: review.stars,
        user: reviews,
        product_id: review.product_id
      }
    end
    render json: {reviews: reviews}
  end
end
