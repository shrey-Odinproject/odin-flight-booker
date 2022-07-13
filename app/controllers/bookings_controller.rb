class BookingsController < ApplicationController
  
  def new
    @flight = Flight.find(params['flight_id'])
    @no_of_passengers = params['passenger'].to_i

    @booking = Booking.new
    @no_of_passengers.times { @booking.passengers.build }
  end
  
  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = "Great! Your booking has been created!"
      redirect_to @booking
    else
      flash.now[:error] = 'Booking failed'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
