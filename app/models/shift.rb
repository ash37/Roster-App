class Shift < ActiveRecord::Base
  
  
  attr_accessible :break_time, :day, :finish_time, :orders_to_place, :shift_type, :start_time, :store_id
  
  validates_presence_of :day, :finish_time, :start_time, :store_id
  
  
  DAYS = ['Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday', 'Monday', 'Tuesday']
  
  belongs_to :store
  
  def start_time_finish_time_friendly
  "#{start_time .strftime('%l:%M %p')} - #{finish_time .strftime('%l:%M %p')}"
  end
  
  def hours_worked
  ((finish_time - start_time) / 1.hour).round
  end
  
end
