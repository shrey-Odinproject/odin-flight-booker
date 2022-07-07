class FlightsController < ApplicationController
  def index
    @date_options = Flight.all.map { |f| [f.start, f.start] }
    @num_passenger_options = *(1..4).map { |n| [n, n] }
    @all_airport_options = Airport.all.map { |a| [a.code, a.id] }
  end
end
