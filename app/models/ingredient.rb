class Ingredient < ApplicationRecord
  # has_and_belongs_to_many :cocktails
  has_many :doses

  validates :name, presence: true, uniqueness: true

  has_many :cocktails, through: :doses
end
