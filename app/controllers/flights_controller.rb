class FlightsController < ApplicationController
  def index
    @date_options = Flight.all.map { |f| [f.start.to_date, f.start.to_date]}.uniq
    @all_airport_options = Airport.all.map { |a| [a.code, a.id] } # can replace with  Airport.pluck(:code, :id)

    datetime = params['start'].to_date.all_day if params['start'] # all day gets records with a specific date irrespective of time
    # wasnt able to load localhost cause error 'no method:to_date for nilclass' because when u open local host for 1st time params has only controller and action inside it yet thats y this if statement
    @result = Flight.where(departure_airport_id: params['departure_airport_id'],
              arrival_airport_id: params['arrival_airport_id'], start: datetime)

    @passenger_result = params[:passenger]
  end
end
