class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.datetime :from_date
      t.datetime :to_date
      t.decimal :rate

      t.timestamps
    end
  end
end
