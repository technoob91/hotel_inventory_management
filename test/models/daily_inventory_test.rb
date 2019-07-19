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

require 'test_helper'

class DailyInventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
