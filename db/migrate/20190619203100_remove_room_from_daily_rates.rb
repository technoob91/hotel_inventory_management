class RemoveRoomFromDailyRates < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_rates, :room_type, foreign_key: true
  end
end
