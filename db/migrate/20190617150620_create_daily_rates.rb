class CreateDailyRates < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_rates do |t|
      t.datetime :date
      t.decimal :rate

      t.timestamps
    end
  end
end
