class AddPropertyToRoomTypes < ActiveRecord::Migration[5.2]
  def change
    add_reference :room_types, :property, foreign_key: true
  end
end
