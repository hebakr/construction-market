class Price < ApplicationRecord
  belongs_to :product

  after_validation :set_price, on: [ :create ]

  private
  def set_price
    Product.find(product_id).update(current_price: price)
  end
end
