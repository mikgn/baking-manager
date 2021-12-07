class Element < ApplicationRecord
  has_many :ingredients, dependent: :delete_all

  accepts_nested_attributes_for :ingredients, allow_destroy: true

  def price
    ingredients.sum { |ingredient| ingredient.price || 0 }
  end
end
