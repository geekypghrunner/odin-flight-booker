class FlightsController < ApplicationController
    
    def index
        @airport_options = Airport.all.map{ |u| [ u.code, u.id ] }
        @departure_options = Flight.all
        @flight_options = Flight.where("from_airport_id = ? AND to_airport_id = ? AND departure = ?", params[:from_airport_id], params[:to_airport_id], params[:departure].nil? ? params[:departure] : params[:departure][0..18])
    end
end