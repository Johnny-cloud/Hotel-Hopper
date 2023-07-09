class BookingSerializer < ActiveModel::Serializer
  attributes :id, :customer, :room_num, :date_in, :date_out

  def customer 
    self.object.customer.name
  end
  
  def room_num
    self.object.room.id
  end
end
