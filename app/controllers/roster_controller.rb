class RosterController < ApplicationController
  def index
    start_date = params[:start_date].blank? ? Store.next_week_start_day_date : Date.parse(params[:start_date])
    @dates = start_date..(start_date + 6.days)
    @shifts = Store.first.shifts
    @employees = Employee.includes(:shifts).all
    @employees.each do |e|
      @dates.each do |date|
        e.shifts.find_or_initialize_by_date(date)
      end
      e.shifts.sort_by!(&:date)
    end
  end
end
