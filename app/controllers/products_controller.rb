# frozen_string_literal: true

# product controller
class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end
end
