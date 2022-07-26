class PassengerMailer < ApplicationMailer
  default from: 'Witchcraft@example.com'

  def confirmation_email(pass)
    @passenger = pass
    mail(to: @passenger.email, subject: 'Ur booking has been confirmed')
  end
end
