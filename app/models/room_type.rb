class RoomType < ApplicationRecord
  belongs_to :property
  has_many :rooms
end
