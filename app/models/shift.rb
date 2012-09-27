class Shift < ActiveRecord::Base
  validates_presence_of :day, :finish_time, :start_time

  DAYS = ['Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday', 'Monday', 'Tuesday']

  belongs_to :shiftable, polymorphic: true

  def start_time_finish_time_friendly
  "#{start_time .strftime('%l:%M %p')} - #{finish_time .strftime('%l:%M %p')}"
  end
  
  def hours_worked
  ((finish_time - start_time) / 1.hour).round
  end
  
end
