class BoardingBookingsController < ApplicationController
  before_action :set_boarding_booking, only: [:show, :edit, :update, :destroy]

  # GET /boarding_bookings
  # GET /boarding_bookings.json
  def index
    @boarding_bookings = BoardingBooking.all
  end

  # GET /boarding_bookings/1
  # GET /boarding_bookings/1.json
  def show
  end

  # GET /boarding_bookings/new
  def new
    @boarding_booking = BoardingBooking.new
  end

  # GET /boarding_bookings/1/edit
  def edit
  end

  # POST /boarding_bookings
  # POST /boarding_bookings.json
  def create
    @boarding_booking = BoardingBooking.new(boarding_booking_params)
    
    respond_to do |format|
      if @boarding_booking.save
   
        Notification.create(recipient: User.second, actor: current_user, action: "booked", notifiable: @boarding_booking)
        format.html { redirect_to @boarding_booking, notice: 'Boarding booking was successfully created.' }
        format.json { render :show, status: :created, location: @boarding_booking }
      else
        format.html { render :new }
        format.json { render json: @boarding_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boarding_bookings/1
  # PATCH/PUT /boarding_bookings/1.json
  def update
    respond_to do |format|
      if @boarding_booking.update(boarding_booking_params)
        format.html { redirect_to @boarding_booking, notice: 'Boarding booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @boarding_booking }
      else
        format.html { render :edit }
        format.json { render json: @boarding_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boarding_bookings/1
  # DELETE /boarding_bookings/1.json
  def destroy
    @boarding_booking.destroy
    respond_to do |format|
      format.html { redirect_to boarding_bookings_url, notice: 'Boarding booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarding_booking
      @boarding_booking = BoardingBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarding_booking_params
      params.require(:boarding_booking).permit(:patient_id, :start_date, :end_date, :confirmed)
    end
end
