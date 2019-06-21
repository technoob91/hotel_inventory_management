class CreateDailyInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_inventories do |t|
      t.datetime :date
      t.boolean :available
      t.belongs_to :room
      t.belongs_to :room_type

      t.timestamps
    end
  end
end
