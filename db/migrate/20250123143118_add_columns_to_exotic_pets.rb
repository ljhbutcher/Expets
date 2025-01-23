class AddColumnsToExoticPets < ActiveRecord::Migration[7.1]
  def change
    add_column :exotic_pets, :species, :string
    add_column :exotic_pets, :price, :integer
  end
end
