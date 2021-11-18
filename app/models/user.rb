class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable     
         
  has_many :organs
  has_many :bookings, through: :organs
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :blood_type, presence: true
end
