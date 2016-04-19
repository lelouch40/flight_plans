class FlightsController < ApplicationController
	def index
		@flight=Flight.search(params)
		#@airports=Airport.all.each do |airport|
		#	[airport.code, airport.id]
		#end
		@airports=Airport.pluck(:code, :id).sort
#@dates = Flight.flight_dates
    @passengers = (1..4).map { |p| [  p.to_s + " passenger".pluralize(p), p] }

end
end
