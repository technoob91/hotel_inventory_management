# == Schema Information
#
# Table name: daily_inventories
#
#  id           :bigint           not null, primary key
#  date         :datetime
#  available    :boolean
#  room_id      :bigint
#  room_type_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class DailyInventory < ApplicationRecord
  belongs_to :room
  belongs_to :room_type
end
