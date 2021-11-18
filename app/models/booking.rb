class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :organ
  
  validates :starts_on, presence: true
  validates :ends_at, presence: true
end
