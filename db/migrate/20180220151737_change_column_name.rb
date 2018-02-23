class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    change_table :flights do |t|
      t.rename :from_airport, :from_airport_id
      t.rename :to_airport, :to_airport_id
    end
  end
end
