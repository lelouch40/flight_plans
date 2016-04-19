
class PassengerMailer < ActionMailer::Base
  default from: "a.ashraff414@gmail.com"
  def welcome_email(passenger)
    @passenger = passenger
    @booking = @passenger.bookings.last
    email_with_name = "#{@passenger.username} <#{@passenger.email}>"
    @url  = 'http://localhost:3000/bookings'

    mail(to: email_with_name, subject: 'Thank you for booking with FlightBooker!')

  end
end
