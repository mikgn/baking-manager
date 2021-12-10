class Recipe < ApplicationRecord
  has_many :elements

  accepts_nested_attributes_for :elements, allow_destroy: true

  validates :title, presence: true, uniqueness: true

  def cost_price
    elements.sum { |element| element.price || 0 }
  end

  def weight
    elements.sum { |element| element.actual_weight || 0 }
  end
end
