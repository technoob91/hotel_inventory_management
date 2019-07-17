class PropertySerializer < ActiveModel::Serializer
  has_many :room_types
  attributes :id, :name

  # def roomTypes
  #   self.object.roomTypes.map 
  # end
  
end
