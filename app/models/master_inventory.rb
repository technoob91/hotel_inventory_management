class MasterInventory < ApplicationRecord
  belongs_to :room_type
  belongs_to :property 
end
