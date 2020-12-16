class Dash < ApplicationRecord
  validates :description, :recipe_id, :ingredient_id, presence: true
  validates :recipe_id, uniqueness: { scope: :ingredient_id }
  belongs_to :recipe
  belongs_to :ingredient
end
