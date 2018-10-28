class BrandsController < ApplicationController
  def show
    @brand = Brand.includes(:products).find(params[:id])
  end
end
