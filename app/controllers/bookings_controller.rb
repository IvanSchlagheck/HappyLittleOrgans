class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @organ = Organ.find(params[:organ_id])
  end
  def create
    @organ = Organ.find(params[:organ_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.organ = @organ
    @booking.save
  end

  private

  def booking_params
    params.require(:starts_on).permit(:ends_at)
  end
end
