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

class DailyRate < ApplicationRecord
  belongs_to :room_type
end
