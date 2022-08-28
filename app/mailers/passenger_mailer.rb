class PassengerMailer < ApplicationMailer
  default from: 'Witchcraft@example.com'

  def confirmation_email
    @booking = params[:booking]
    mail(to: @booking.passengers.pluck(:email), subject: 'Ur booking has been confirmed')
  end
end
