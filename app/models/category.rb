# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :category, class_name: 'Category', optional: true
  has_many :sub_categories, class_name: 'Category', foreign_key: 'parent_id'
  has_many :brands
  has_many :spec_items

  scope :root, -> { where(parent_id: nil) }
end
