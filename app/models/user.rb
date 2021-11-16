class User < ApplicationRecord
  has_many :bookings
  has_many :organs
  has_many :organs, through: :bookings
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :blood_type, presence: true
end
