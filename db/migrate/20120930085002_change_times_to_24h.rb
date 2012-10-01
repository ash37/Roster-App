class ChangeTimesTo24h < ActiveRecord::Migration
  def up
    change_column :shifts, :start_time, :string
    change_column :shifts, :finish_time, :string
    change_column :default_shifts, :start_time, :string
    change_column :default_shifts, :finish_time, :string

    Shift.all.each do |shift|
      shift.start_time = parse_time(shift.start_time)
      shift.finish_time = parse_time(shift.start_time)
      shift.save
    end
    DefaultShift.all.each do |shift|
      shift.start_time = parse_time(shift.start_time)
      shift.finish_time = parse_time(shift.start_time)
      shift.save
    end
  end

  def down
    change_column :shifts, :start_time, :time
    change_column :shifts, :finish_time, :time
    change_column :default_shifts, :start_time, :time
    change_column :default_shifts, :finish_time, :time
  end

  def parse_time(string)
    Time.parse(string).strftime('%R')
  end
end