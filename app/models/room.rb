class Room < ApplicationRecord
    # relationships
     belongs_to :hotel

     has_many :customer_rooms 
     has_many :customers, through: :customer_rooms
     has_many :bookings, dependent: :destroy 
     has_many :rooms, through: :bookings
end
