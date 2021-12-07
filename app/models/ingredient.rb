class Ingredient < ApplicationRecord
  validates :element, presence: true

  belongs_to :element
  belongs_to :product

  def quantity
    weight_kg || volume_liter || count
  end

  def price
    product&.price_ruble * quantity
  end

  def title
    product&.title
  end
end
