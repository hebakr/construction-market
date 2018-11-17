# frozen_string_literal: true

# catalog controller
class CatalogController < ApplicationController
  before_action :authenticate_user!, only: [:quotation_request]

  def index
    @categories = Category.root
  end

  def show
    @category = Category.includes(:brands).find(params[:id])
  end

  def quotation_request
    @items = current_user.quotation_items.includes(:product)
  end

  def update_request
    ids = params[:ids]
    notes = params[:notes]
    qty = params[:qty]
    # byebug
    ids.each do |id|
      QuotationItem.where(id: id)
                   .update_all({ notes: notes[id[0]], quantity: qty[id[0]]})


    end

    flash[:notice] = 'Your quotation request has been updated successfully'
    redirect_to('/user/quotation')
  end
end
