class RemovePolymorphicToShifts < ActiveRecord::Migration
  def up
    add_column :shifts, :employee_id, :integer
    remove_column :shifts, :store_id
    remove_column :shifts, :shiftable_type
    remove_column :shifts, :shiftable_id
    Shift.destroy_all
  end

  def down
    add_column :shifts, :shiftable_id, :integer
    add_column :shifts, :shiftable_type, :string
    remove_column :shifts, :employee_id
    add_column :shifts, :store_id, :integer
  end
end
