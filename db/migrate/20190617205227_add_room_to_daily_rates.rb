class AddRoomToDailyRates < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_rates, :room, foreign_key: true
  end
end
