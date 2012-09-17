class Unavailability < ActiveRecord::Base
  attr_accessible :day, :employee_id, :finish_time, :start_time
  
  belongs_to :employee
  accepts_nested_attributes_for :employee, allow_destroy: true
  
end
