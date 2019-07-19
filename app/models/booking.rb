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

class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :property
  
  after_create :block_inventory

  def block_inventory
    DailyInventory.where(:date => check_in_date..check_out_date, :room_id => room_id).update_all(available: false)
  end
  

end
