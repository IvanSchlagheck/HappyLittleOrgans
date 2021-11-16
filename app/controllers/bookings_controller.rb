class BookingsController < ApplicationController
    resources :bookings, only [ :new, :create ]
end
