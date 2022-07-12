class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params['flight_id'])
    @no_of_passengers = params['passenger'].to_i

    @booking = Booking.new
    @no_of_passengers.times { @booking.passengers.build }
  end
  def create

  end
end
