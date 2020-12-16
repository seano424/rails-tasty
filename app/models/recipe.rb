class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :dashes, dependent: :destroy
  has_many :ingredients, through: :dashes
end
