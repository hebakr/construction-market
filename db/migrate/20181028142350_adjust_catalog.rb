# frozen_string_literal: true

class AdjustCatalog < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand_id, :integer
    add_column :categories, :parent_id, :integer
    remove_column :products, :category_id
  end
end
