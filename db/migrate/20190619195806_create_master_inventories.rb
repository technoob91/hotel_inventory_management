class CreateMasterInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :master_inventories do |t|
      t.integer :total_rooms
      t.belongs_to :room_type
      t.belongs_to :property
      
      t.timestamps
    end
  end
end
