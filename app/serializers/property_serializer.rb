# == Schema Information
#
# Table name: properties
#
#  id         :bigint           not null, primary key
#  name       :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PropertySerializer < ActiveModel::Serializer
  has_many :room_types
  attributes :id, :name

  # def roomTypes
  #   self.object.roomTypes.map 
  # end
  
end
