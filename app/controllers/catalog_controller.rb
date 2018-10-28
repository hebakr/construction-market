# frozen_string_literal: true

# catalog controller
class CatalogController < ApplicationController
  def index
    @categories = Category.root
  end

  def show
    @category = Category.includes(:brands).find(params[:id])
  end
end
