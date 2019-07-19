# == Schema Information
#
# Table name: room_types
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :bigint
#

class RoomType < ApplicationRecord
  belongs_to :property
  has_many :rooms
end
