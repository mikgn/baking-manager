# frozen_string_literal: true

module Api
  module V1
    class ProductsController < Api::V1::BaseController
      def index
        products = Product.all

        render json: ProductBlueprint.render(products), status: :ok
      end
    end
  end
end
