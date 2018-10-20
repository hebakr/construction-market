# frozen_string_literal: true

# catalog controller
class CatalogController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.includes(:products).find(params[:id])
  end
end
