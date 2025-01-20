class CreateExoticPets < ActiveRecord::Migration[7.1]
  def change
    create_table :exotic_pets do |t|
      t.string :name
      t.integer :age
      t.text :description
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
