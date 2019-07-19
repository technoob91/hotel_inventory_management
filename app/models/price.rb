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

class Price < ApplicationRecord
  belongs_to :room
end
