ActiveAdmin.register Ingredient do
  menu false

  belongs_to :element, optional: true
end
