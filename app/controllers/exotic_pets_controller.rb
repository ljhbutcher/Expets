class ExoticPetsController < ApplicationController
  # Allow unauthenticated users to view the index and show actions
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @exotic_pets = ExoticPet.all
    if params[:query].present?
      @exotic_pets = @exotic_pets.where("description ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show

    @exotic_pet = ExoticPet.find(params[:id])

    # The `geocoded` scope filters only pets with coordinates
    @markers = [
      {
        lat: @exotic_pet.latitude,
        lng: @exotic_pet.longitude
      }
    ]
    @reviews = @exotic_pet.reviews
  end

  def new
    @exotic_pet = ExoticPet.new
  end

  def geocoded_by
  end

  def create
    @exotic_pet = ExoticPet.new(exotic_pet_params)
    @exotic_pet.user = current_user

    if @exotic_pet.save
      redirect_to @exotic_pet
    end
  end

  def ratings
    sum = 0
      @exoting_pet.reviews.ratings.each do |rating|
        sum += rating.value
      end
    return sum / ratings.size
  end

  private

  def exotic_pet_params
    params.require(:exotic_pet).permit(:name,  :age, :description, :image_url, photos: [])
  end
end
