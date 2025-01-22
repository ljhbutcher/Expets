class AddCoordinatesToExoticPets < ActiveRecord::Migration[7.1]
  def change
    add_column :exotic_pets, :latitude, :float
    add_column :exotic_pets, :longitude, :float
  end
end
