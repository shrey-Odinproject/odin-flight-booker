class LinkFlightBookingPassenger < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight, index: true, foreign_key: true 
    add_reference :bookings, :passenger, index: true, foreign_key: true
  end
end
