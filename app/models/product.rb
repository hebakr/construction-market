# product model
class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :providers, foreign_key: 'company_id', class_name: 'Company'
end
