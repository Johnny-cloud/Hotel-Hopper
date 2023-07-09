class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :room_type, :available, :image, :hotel
  
  def hotel 
    self.object.hotel.name
  end

end
