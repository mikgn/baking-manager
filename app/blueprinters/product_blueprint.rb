class ProductBlueprint < Blueprinter::Base
  field :count, if: ->(_field_name, product, _options) { product.count.present? }
  field :weight_kg, if: ->(_field_name, product, _options) { product.weight_kg.present? }
  field :volume_liter, if: ->(_field_name, product, _options) { product.volume_liter.present? }

  fields :title, :body, :price_ruble
end
