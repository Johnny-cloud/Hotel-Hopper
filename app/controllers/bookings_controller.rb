class BookingsController < ApplicationController

    def index 
        render json: Booking.all, status: :ok
    end

    def destroy
        booking = Booking.find(params[:id])
        booking.destroy 
        head :no_content
    end
end
