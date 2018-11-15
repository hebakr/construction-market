# frozen_string_literal: true

# product controller
class ProductsController < ApplicationController

  def show
    @product = Product.includes([spec_values: :spec_item],
                                [offers: :company],
                                :prices,
                                :photos,
                                :companies).find(params[:id])
  end
end
