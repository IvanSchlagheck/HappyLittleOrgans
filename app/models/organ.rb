class Organ < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependant: :destroy
  
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
