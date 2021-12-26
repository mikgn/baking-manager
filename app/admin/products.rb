# frozen_string_literal: true

ActiveAdmin.register Product do
  menu priority: 3

  index do
    column :title
    column :weight_kg
    column :volume_liter
    column :count
    column :price_ruble
    column :created_at
    column :updated_at

    actions
  end

  permit_params :title,
                :body,
                :weight_kg,
                :volume_liter,
                :count,
                :price_ruble
end
