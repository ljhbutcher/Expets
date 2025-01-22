class AddAddressToExoticPets < ActiveRecord::Migration[7.1]
  def change
    add_column :exotic_pets, :address, :string
  end
end
