class ChangeShiftDayToInteger < ActiveRecord::Migration
  def up
    change_column :shifts, :day, :integer
  end

  def down
    change_column :shifts, :day, :string
  end
end