class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :exotic_pet, null: false, foreign_key: { to_table: :exotic_pets }

      t.timestamps
    end
  end
end
