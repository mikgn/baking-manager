class Ingredient < ApplicationRecord
  belongs_to :element
  belongs_to :product

  validates :element, presence: true
end
