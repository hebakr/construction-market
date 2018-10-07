class AddOptionsToSpecItem < ActiveRecord::Migration[5.2]
  def change
    add_column :spec_items, :options, :text
  end
end
