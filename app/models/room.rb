
class Room < ApplicationRecord
  belongs_to :property
  belongs_to :room_type
  has_many :prices
  has_many :bookings
end
