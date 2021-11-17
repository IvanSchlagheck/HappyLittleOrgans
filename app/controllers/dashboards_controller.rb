class DashboardsController < ApplicationController
  def index
    # @bookings = current_user.bookings if current_user
    @bookings = Booking.all
    @organs = current_user.organs if current_user
    # raise
  end
end
