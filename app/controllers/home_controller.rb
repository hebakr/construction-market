# frozen_string_literal: true
# home controller
class HomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    cat = Category.first
  end
end

