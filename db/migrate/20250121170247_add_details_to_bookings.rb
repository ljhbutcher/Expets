class AddDetailsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :event_details, :text
    add_column :bookings, :contact_email, :string
    add_column :bookings, :contact_phone, :string
  end
end
