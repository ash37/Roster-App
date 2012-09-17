class CreateUnavailabilities < ActiveRecord::Migration
  def change
    create_table :unavailabilities do |t|
      t.integer :employee_id
      t.time :start_time
      t.time :finish_time
      t.integer :day

      t.timestamps
    end
  end
end
