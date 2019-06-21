class Property < ApplicationRecord
  has_many :rooms
  has_many :room_types
  has_many :bookings

  scope :rooms, -> { where(:property_id => id)}
  # Ex:- scope :active, -> {where(:active => true)}

end
