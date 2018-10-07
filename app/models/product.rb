class Product < ApplicationRecord
  belongs_to :category
  has_many :photos
  has_many :attachements
  has_many :spec_values
  has_many :prices
  has_and_belongs_to_many :providers, foreign_key: 'company_id',
                                      class_name: 'Company'
end
