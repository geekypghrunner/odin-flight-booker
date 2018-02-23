class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :from_airport
      t.integer :to_airport
      t.datetime :departure
      t.string :duration

      t.timestamps
    end
  end
end
