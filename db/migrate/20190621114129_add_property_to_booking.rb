class AddPropertyToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :property, foreign_key: true
    add_reference :bookings, :room, foreign_key: true
    add_column :bookings, :transaction_id, :string
  end
end
