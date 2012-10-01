class ChangeShiftsForEmployees < ActiveRecord::Migration
  def up
    remove_column :shifts, :day
    rename_column :shifts, :shift_type, :duty
    rename_column :shifts, :orders_to_place, :notes
    add_column :shifts, :store_id, :integer
    add_column :shifts, :date, :date
  end

  def down
    remove_column :shifts, :date
    remove_column :shifts, :store_id
    rename_column :shifts, :notes, :orders_to_place
    rename_column :shifts, :duty, :shift_type
    add_column :shifts, :day, :integer
  end
end