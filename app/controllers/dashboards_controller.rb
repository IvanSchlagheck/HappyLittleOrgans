class DashboardsController < ApplicationController
  def index
    @bookings = current_user.bookings if current_user
    @organs = current_user.organs if current_user
  end
end
