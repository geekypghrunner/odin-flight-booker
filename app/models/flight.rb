class Flight < ApplicationRecord
    belongs_to :from_airport, :class_name => "Airport"
    belongs_to :to_airport, :class_name => "Airport"
    has_many :bookings
    
    def flight_info
        "#{Airport.find(from_airport_id).code} to #{Airport.find(to_airport_id).code} leaving on #{departure_date_formatted}."
    end
    
    def departure_date_formatted
        departure.strftime("%m/%d/%Y")
    end


end