class AdminController < ApplicationController

    before_action :authorize
    skip_before_action :authorize, only: [:customers]

    def customers 
        render json: Customer.all, status: :ok
    end
    
    def delete_customer 
        customer = Customer.find(params[:id])
        customer.destroy 
        head :no_content
    end

    private 
    def authorize 
        render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :admin_id
    end
end
