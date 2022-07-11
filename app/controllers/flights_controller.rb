class FlightsController < ApplicationController
  def index
    @date_options = Flight.all.map { |f| [f.start.to_date, f.start]}.uniq
    @num_passenger_options = *(1..4).map { |n| [n, n] }
    @all_airport_options = Airport.all.map { |a| [a.code, a.id] } # can replace with  Airport.pluck(:code, :id)

    @result = Flight.where(departure_airport_id: params['departure_airport_id'],
              arrival_airport_id: params['arrival_airport_id'], start: params['start'])

    @passenger_result = params[:passenger]
  end
end
