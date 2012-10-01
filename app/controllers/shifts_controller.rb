class ShiftsController < ApplicationController
  before_filter :load_employee

  # POST /shifts
  # POST /shifts.json
  def create
    @shift = @employee.shifts.new(params[:shift])

    respond_to do |format|
      if @shift.save
        format.html { redirect_to root_url, notice: 'Shift was successfully created.' }
        format.json { render json: @shift, status: :created, location: @shift }
      else
        format.html { render action: "new" }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shifts/1
  # PUT /shifts/1.json
  def update
    @shift = @employee.shifts.find(params[:id])

    respond_to do |format|
      if @shift.update_attributes(params[:shift])
        format.html { redirect_to root_url, notice: 'Shift was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shifts/1
  # DELETE /shifts/1.json
  def destroy
    @shift = @employee.shifts.find(params[:id])
    @shift.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private

  def load_employee
    @employee = Employee.find(params[:employee_id])
  end
end
