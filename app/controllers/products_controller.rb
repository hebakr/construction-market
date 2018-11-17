# frozen_string_literal: true

# product controller
class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def show
    @product = Product.includes([spec_values: :spec_item],
                                [offers: :company],
                                :prices,
                                :photos,
                                :companies).find(params[:id])
  end

  def create
    if (current_user.quotation_items.find_by_product_id(params[:product_id]))
      flash[:alert] = 'Product already exists on your quotation request list'
    else
      current_user.quotation_items.create(product_id: params[:product_id], quantity: 1)
      flash[:notice] = 'Product added to your quotation request list'
    end

    redirect_to(catalog_brand_product_path(params[:catalog_id], params[:brand_id], params[:product_id]))
  end
end
