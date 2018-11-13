class Product < ApplicationRecord
  belongs_to :brand
  has_many :photos
  has_many :attachements
  has_many :spec_values
  has_many :prices
  has_and_belongs_to_many :companies

  def similar
    min = current_price * 0.8
    max = current_price * 1.2
    brand_ids = brand.category.brands.pluck(:id)

    Product.includes(spec_values: :spec_item).where(brand_id: brand_ids)
        .where('current_price >= ?', min)
        .where('current_price <= ?', max)
  end
end
