class BookingsController < ApplicationController
	def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build

    params[:passengers].to_i.times { @booking.passengers.build }
    @booking.passengers.build if params[:passengers].blank?
  end

  def create
    @booking = Booking.new(strong_params)
    if @booking.save
      @booking.passengers.each { |passenger| PassengerMailer.welcome_email(passenger).deliver_now! }
      flash[:notice]="Created"
      render("show")
    else
     flash[:error]="Something went wrong"
      render 'new'
    end
  end
  def show
  	@booking = Booking.find(params[:id])
end
	private
	def strong_params
		params.require(:booking).permit(:flight_id, passengers_attributes: [:username, :email] )
end
end