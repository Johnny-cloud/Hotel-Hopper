class SingleRoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :available, :room_type, :image
  belongs_to :hotel
end
