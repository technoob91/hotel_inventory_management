# == Schema Information
#
# Table name: master_inventories
#
#  id           :bigint           not null, primary key
#  total_rooms  :integer
#  room_type_id :bigint
#  property_id  :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class MasterInventory < ApplicationRecord
  belongs_to :room_type
  belongs_to :property 
end
