class DailyInventory < ApplicationRecord
  belongs_to :room
  belongs_to :room_type
end
