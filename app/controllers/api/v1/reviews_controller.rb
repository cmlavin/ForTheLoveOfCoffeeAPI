class Api::V1::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def new
    @review = Review.new
  end

  def create
    #review.user_id = user.id
    @review = Review.new(review_params)
    if @review.save
      render json: @review
    else
      render json: { message: "Review not created." }
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating, :created_at, :edited_at)
  end

end
