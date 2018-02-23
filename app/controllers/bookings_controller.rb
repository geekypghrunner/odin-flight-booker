class BookingsController < ApplicationController
    
    def new
        @flight_info = Flight.find(params[:flight][:id])
        @booking = Booking.new
    end
    
    def create
        @booking = Booking.create(:flight_id => params[:flight_id])
        params[:booking].each do |key, value|
          Passenger.create(:name => params[:booking][key][:name], :email => params[:booking][key][:email], :booking_id => @booking.id)
        end
        redirect_to booking_path(@booking)
    end
    
    def show
      @booking = Booking.find(params[:id])
    end

private
  def booking_params
    params.require(:booking).permit(:flight_id,
      passengers_attributes: [:name, :email, :id])
  end
end
