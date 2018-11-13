class Distributer < ApplicationRecord
  has_many :offers
  has_many :products, through: :offers
end
