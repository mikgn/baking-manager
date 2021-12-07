class Recipe < ApplicationRecord
  has_many :elements

  accepts_nested_attributes_for :elements, allow_destroy: true

  validates :title, presence: true, uniqueness: true

  def cost_price
    elements.sum(&:price)
  end

  def weight
    elements.sum(&:actual_weight)
  end
end
