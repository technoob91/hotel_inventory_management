class AddRoomToDailyPrice < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_prices, :room, foreign_key: true
  end
end
