class Recipe < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  has_one :nutritional_information, dependent: :destroy
  accepts_nested_attributes_for :nutritional_information
end
