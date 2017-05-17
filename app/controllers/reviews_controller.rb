class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create, :index]

  def index
    @reviews = @restaurant.reviews
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
    # we need `restaurant_id` to asssociate review with corresponding restaurant
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
