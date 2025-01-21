class ExoticPetsController < ApplicationController
  def index
    @exotic_pets = ExoticPet.all
  end

  def show
    @exotic_pet = ExoticPet.find(params[:id])
  end

  def new
    @exotic_pet = ExoticPet.new
  end

  def create
  end

  def destroy
  end

  private

  def exotic_pet_params
    params.require(:article).permit(:name,  :age, :description, :image_url, :photo)
  end
end
