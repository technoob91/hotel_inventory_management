# == Schema Information
#
# Table name: rooms
#
#  id            :bigint           not null, primary key
#  name          :string
#  max_occupancy :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  property_id   :bigint
#  room_type_id  :bigint
#

class RoomSerializer < ActiveModel::Serializer
  attributes :id
end
