class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :store_id
      t.string :day
      t.time :start_time
      t.time :finish_time
      t.time :break_time
      t.string :shift_type
      t.string :orders_to_place

      t.timestamps
    end
  end
end
