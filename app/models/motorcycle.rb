class Motorcycle < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :category, presence: true
  validates :description, presence: true
  validates :moto_picture_url, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :available_dates, presence: true
end
