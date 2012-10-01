class DefaultShift < ActiveRecord::Base
  belongs_to :store

  def start_time_finish_time
    "#{start_time}-#{finish_time}"
  end

  def start_time_finish_time_friendly
    "#{start_time.strftime('%l:%M %p')} - #{finish_time.strftime('%l:%M %p')}"
  end
end
