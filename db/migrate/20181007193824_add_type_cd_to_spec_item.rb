class AddTypeCdToSpecItem < ActiveRecord::Migration[5.2]
  def up
    remove_column :spec_items, :type
  end

  def down
    add_column :spec_items, :type, :integer
  end
end
