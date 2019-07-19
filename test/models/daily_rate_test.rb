# == Schema Information
#
# Table name: daily_rates
#
#  id           :bigint           not null, primary key
#  date         :datetime
#  rate         :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  room_type_id :bigint
#

require 'test_helper'

class DailyRateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
