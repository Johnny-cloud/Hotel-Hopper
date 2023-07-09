class Customer < ApplicationRecord
    has_secure_password 

    validates :email, uniqueness: true
    
    has_many :customer_rooms, dependent: :destroy
    has_many :rooms, through: :customer_rooms
    has_many :bookings, dependent: :destroy 
    has_many :rooms, through: :bookings
end
