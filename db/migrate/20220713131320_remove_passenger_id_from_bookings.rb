class RemovePassengerIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :passenger, index: true, foreign_key: true
  end
end
