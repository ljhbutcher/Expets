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
end
