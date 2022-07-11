class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params['flight_id'])
    @no_of_passengers = params['passenger']
  end
end
