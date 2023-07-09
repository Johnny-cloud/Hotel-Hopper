class CustomersController < ApplicationController

    before_action :authorize 
    skip_before_action :authorize, only: [:create]

    def show 
        customer = Customer.find(params[:id])
        render json:customer, serializer: SingleCustomerSerializer, status: :ok 
    end

    def create 
       customer = Customer.create!(customer_params)
       render json: customer, status: :created
    end

    def update 
        customer = Customer.find(params[:id])
        customer.update!(customer_params)
        render json: customer, status: :ok
    end

    def book_room 
        customer = Customer.find(params[:id])
        room = Room.find(params[:room_id])
        customer.rooms << room
        Booking.create!(customer: customer, room: room, date_in: params[:date_in], date_out: params[:date_out])
        render json: {success: "Booked room"}, status: :created
    end

    def my_bookings 
        customer = Customer.find(params[:id])
        bookings = customer.bookings
        render json: bookings, status: :ok
    end

    private 
    def render_not_found_response 
        render json: {error: "Customer found"}, status: :not_found
    end

    def customer_params 
        params.permit(:name, :email, :password, :password_confirmation, :room_id, :date_in, :date_out)
        
    end

    def authorize 
        render json: {error: "Not logged in"}, status: :unauthorized unless session.include? :customer_id
    end
end
