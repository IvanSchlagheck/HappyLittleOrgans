class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @organ = Organ.find(params[:organ_id])
  end

  def create
    @organ = Organ.find(params[:organ_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.organ = @organ

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_at)
  end
end
