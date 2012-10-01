class DefaultShiftsController < ApplicationController
  # GET /default_shifts
  # GET /default_shifts.json
  def index
    @default_shifts = DefaultShift.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @default_shifts }
    end
  end

  # GET /default_shifts/1
  # GET /default_shifts/1.json
  def show
    @default_shift = DefaultShift.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @default_shift }
    end
  end

  # GET /default_shifts/new
  # GET /default_shifts/new.json
  def new
    @default_shift = DefaultShift.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @default_shift }
    end
  end

  # GET /default_shifts/1/edit
  def edit
    @default_shift = DefaultShift.find(params[:id])
  end

  # POST /default_shifts
  # POST /default_shifts.json
  def create
    @default_shift = DefaultShift.new(params[:default_shift])

    respond_to do |format|
      if @default_shift.save
        format.html { redirect_to @default_shift, notice: 'Default shift was successfully created.' }
        format.json { render json: @default_shift, status: :created, location: @default_shift }
      else
        format.html { render action: "new" }
        format.json { render json: @default_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /default_shifts/1
  # PUT /default_shifts/1.json
  def update
    @default_shift = DefaultShift.find(params[:id])

    respond_to do |format|
      if @default_shift.update_attributes(params[:default_shift])
        format.html { redirect_to @default_shift, notice: 'Default shift was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @default_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /default_shifts/1
  # DELETE /default_shifts/1.json
  def destroy
    @default_shift = DefaultShift.find(params[:id])
    @default_shift.destroy

    respond_to do |format|
      format.html { redirect_to default_shifts_url }
      format.json { head :no_content }
    end
  end
end
