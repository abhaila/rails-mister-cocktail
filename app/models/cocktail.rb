class Cocktail < ApplicationRecord
  # has_and_belongs_to_many :ingredients
  has_many :doses, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  has_many :ingredients, through: :doses
end
