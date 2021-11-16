class DashboardsController < ApplicationController
  def dashboard
    @organs = current_user.organs
    @bookings = current_user.bookings
  end
end
