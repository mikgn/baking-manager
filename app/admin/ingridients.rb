ActiveAdmin.register Ingredient do
  menu false

  belongs_to :element, optional: true

  index do
    column :title
    column :weight_kg
    column :volume_liter
    column :count
    column :price
    column :created_at
    column :updated_at

    actions
  end

  show do
    attributes_table_for ingredient do
      row :title
      row :body
      row :weight_kg
      row :volume_liter
      row :count
      row :price
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.semantic_errors
      f.input :product,
               label: 'product',
               as: :select,
               collection: Product.pluck(:title, :id),
               display_name: :title

      f.input :body
      f.input :weight_kg, label: 'weight'
      f.input :volume_liter, label: 'volume'
      f.input :count, label: 'count'
    end
    f.actions
  end

  permit_params :title,
                :body,
                :weight_kg,
                :volume_liter,
                :count,
                :product_id,
                :element_id
end
