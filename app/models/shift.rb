class Shift < ActiveRecord::Base
  attr_accessible :break_time, :day, :finish_time, :orders_to_place, :shift_type, :start_time, :store_id
  
  validates_presence_of :day, :finish_time, :start_time, :store_id
  
  
  DAYS = ['Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday', 'Monday', 'Tuesday']
  
  belongs_to :store
  
end
