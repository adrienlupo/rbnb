class Motorcycle < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
