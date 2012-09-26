class RosterController < ApplicationController
  def index
    start_date = params[:start_date].blank? ? Store.next_week_start_day_date : Date.parse(params[:start_date])
    @dates = start_date..(start_date + 6.days)
    @shifts = Shift.all
  end
end
