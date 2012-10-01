class CreateDefaultShifts < ActiveRecord::Migration
  def change
    create_table :default_shifts do |t|
      t.integer :store_id
      t.integer :day
      t.time :start_time
      t.time :finish_time
      t.time :break_time
      t.string :duty
      t.string :notes

      t.timestamps
    end
  end
end
