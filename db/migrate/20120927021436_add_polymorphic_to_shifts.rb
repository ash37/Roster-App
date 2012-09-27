class AddPolymorphicToShifts < ActiveRecord::Migration
  def up
    add_column :shifts, :shiftable_id, :integer
    add_column :shifts, :shiftable_type, :string
    Shift.all.each do |shift|
      shift.shiftable = Store.find(shift.store_id)
      shift.save
    end
    remove_column :shifts, :shift_id
  end

  def down
    add_column :shifts, :shift_id, :integer
    remove_column :shifts, :shiftable_type
    remove_column :shifts, :shiftable_id
    Shift.destroy_all
  end
end
