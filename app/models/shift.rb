class Shift < ActiveRecord::Base
  belongs_to :employee
  belongs_to :store

  def dup 
    new_record = old_record.dup
  end

  def start_time_finish_time
    "#{start_time}-#{finish_time}"
  end

  def start_time_finish_time=(range)
    self.start_time, self.finish_time = range.split('-')
  end
  
  def start_time_finish_time_friendly
    # "#{start_time.strftime('%l:%M %p')} - #{finish_time.strftime('%l:%M %p')}"
  end
  
  def hours_worked
    ((finish_time - start_time) / 1.hour).round
  end
end
