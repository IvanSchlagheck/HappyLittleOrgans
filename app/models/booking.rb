class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :organ
  has_one :review

  validates :starts_on, presence: true
  validates :ends_at, presence: true
end
