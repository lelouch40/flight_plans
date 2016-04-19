class Flight < ActiveRecord::Base
 belongs_to :flight_from, class_name: "Airport"
  belongs_to :flight_to, class_name: "Airport"
  has_many :bookings
  has_many :passengers, :through => :bookings
    def self.flight_dates
    all.collect { |f| [f.formatted_date, f.start_date.to_date] }.uniq
  end
	  def self.search(params)
    if params[:search]
      Flight.where(flight_from_id: params[:from], flight_to_id: params[:to]
      ).includes(:flight_from, :flight_to) # prevents N + 1 queries
    else
      Flight.none
    end
  end
  def self.on_date(date)
    # elegant solution from: http://stackoverflow.com/questions/2381718/rails-activerecord-date-between
    where(start_date: date.beginning_of_day..date.end_of_day)
  end
  
  def formatted_date
    start_date.to_date.strftime("%m/%d/%y")
  end
end
