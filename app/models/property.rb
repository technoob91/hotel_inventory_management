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

class Property < ApplicationRecord
  has_many :rooms
  has_many :room_types
  has_many :bookings

  scope :rooms, -> { where(:property_id => id)}
  # Ex:- scope :active, -> {where(:active => true)}

end
