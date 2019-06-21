class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :check_in_date
      t.datetime :check_out_date
      t.decimal :price

      t.timestamps
    end
  end
end
