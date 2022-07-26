class BookingsController < ApplicationController
  
  def new
    @flight = Flight.find(params['flight_id'])

    @booking = Booking.new
    @booking.passengers.build # atleast see one 1 form to build a single passenger for booking
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      @booking.passengers.each do |pass|
        PassengerMailer.confirmation_email(pass).deliver_later
      end
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
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :_destroy, :name, :email])
  end
end
