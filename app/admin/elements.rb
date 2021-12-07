ActiveAdmin.register Element do
  menu priority: 2

  belongs_to :recipe, optional: true

  includes :ingredients

  index do
    column :title
    column 'Cost Price', :price
    column :actual_weight
    column :created_at
    column :updated_at

    actions
  end

  show do
    attributes_table_for element do
      row :title
      row 'Cost Price', :price do |element|
        element.price
      end
      row :actual_weight
      row :description
      row :ingredients do
        element.ingredients.each do |ingredient|
          link_to(ingredient.title, admin_element_ingredient_path(element, ingredient))
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.semantic_errors
      f.input :title
      f.input :actual_weight
      f.input :description

      f.has_many :ingredients, allow_destroy: true do |ingredient|
        ingredient.inputs 'element products' do
          ingredient.input :product,
                           label: 'product',
                           as: :select,
                           collection: Product.pluck(:title, :id),
                           display_name: :title

          ingredient.input :weight_kg, label: 'weight'
          ingredient.input :volume_liter, label: 'volume'
          ingredient.input :count, label: 'count'
        end
      end
    end
    f.actions
  end

  permit_params :title,
                :description,
                :actual_weight,
                product_ids: [],
                products_attributes: {},
                ingredients_attributes: {}
end
