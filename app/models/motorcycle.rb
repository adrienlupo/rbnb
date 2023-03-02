class Motorcycle < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :bookings

  validates :title, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
