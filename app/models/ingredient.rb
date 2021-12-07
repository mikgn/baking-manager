class Ingredient < ApplicationRecord
  validates :element, presence: true

  belongs_to :element
  belongs_to :product

  def quantity
    weight_kg || volume_liter || count
  end

  def price
    return if product&.price_ruble.nil? || quantity.nil?

    product&.price_ruble * quantity
  end

  def title
    product&.title
  end
end
