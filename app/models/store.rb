class Store < ActiveRecord::Base
  validates_presence_of :address, :name

  has_many :shifts, as: :shiftable
  has_many :employments
  has_many :employees, through: :employments

  WEEK_START_DAY = 3

  def self.week_start_day_name
    Date::DAYNAMES[WEEK_START_DAY]
  end

  def self.next_week_start_day_date
    Chronic.parse("next #{week_start_day_name}").to_date
  end
end
