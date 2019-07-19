# == Schema Information
#
# Table name: bookings
#
#  id             :bigint           not null, primary key
#  check_in_date  :datetime
#  check_out_date :datetime
#  price          :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  property_id    :bigint
#  room_id        :bigint
#  transaction_id :string
#

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
