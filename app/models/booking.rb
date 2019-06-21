class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :property
  
  after_create :block_inventory

  def block_inventory
    DailyInventory.where(:date => check_in_date..check_out_date, :room_id => room_id).update_all(available: false)
  end
  

end
