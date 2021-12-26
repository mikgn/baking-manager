# frozen_string_literal: true

class RecipeDecorator < Draper::Decorator
  delegate_all

  decorates_association :elements

  def cost_price
    elements.sum { |element| element.price || 0 }
  end

  def weight
    elements.sum { |element| element.actual_weight || 0 }
  end
end
