ActiveAdmin.register Recipe do
  decorate_with RecipeDecorator

  menu priority: 1

  includes :elements

  index do
    column :title
    column :weight
    column :cost_price
    column :price
    actions
  end

  show do
    attributes_table_for recipe do
      row :title
      row :body
      row :weight
      row :cost_price
      row :price
      row :elements do
        recipe.elements.each do |element|
          link_to(element.title, admin_recipe_element_path(recipe, element))
        end
      end
    end
  end

  form decorate: true do |f|
    f.inputs do
      f.semantic_errors
      f.input :title
      f.input :body
      f.input :price
      f.input :element_ids,
              as: :check_boxes,
              collection: Element.pluck(:title, :id)
    end
    f.actions
  end

  permit_params :title,
                :body,
                :price,
                element_ids: []
end
