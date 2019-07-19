# == Schema Information
#
# Table name: prices
#
#  id         :bigint           not null, primary key
#  from_date  :datetime
#  to_date    :datetime
#  rate       :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :bigint
#

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
