class RosterController < ApplicationController
  def index
    @shifts = Shift.all
  end
end
