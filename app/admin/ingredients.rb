ActiveAdmin.register Ingredient do
  decorate_with IngredientDecorator

  menu false

  includes :product

  belongs_to :element, optional: true
end
