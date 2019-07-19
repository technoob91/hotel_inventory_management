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

require 'test_helper'

class MasterInventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
