class BookingsController < ApplicationController
  before_action :set_motorcycle, only: %i[new create]

  def show
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_bookings)
    @booking.motorcycle = @motorcycle
    @booking.user = current_user
    @booking.owner_id = @booking.motorcycle.user
    if @booking.save
      redirect_to motorcycle_booking_path(@motorcycle, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @booking = Booking.new
  end

  private

  def params_bookings
    params.require(:booking).permit(:end_date, :start_date)
  end

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
  end
end
