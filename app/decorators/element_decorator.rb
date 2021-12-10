class ElementDecorator < Draper::Decorator
  delegate_all

  decorates_association :ingredients

  def price
    ingredients.sum { |ingredient| ingredient.price || 0 }
  end
end
