class ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @exotic_pet = ExoticPet.find(params[:exotic_pet_id])
    @review = Review.new
  end

  def create
    @exotic_pet = ExoticPet.find(params[:exotic_pet_id]) # Ensure the correct ExoticPet is fetched
    @review = Review.new(review_params)
    @review.exotic_pet = @exotic_pet
    @review.user = current_user
    if @review.save
      redirect_to exotic_pet_path(@exotic_pet), notice: "Review added successfully!"
    else
      render "exotic_pets/show", alert: "There was an error adding your review." # Render the same page with validation errors
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
