class AddCurrentPriceRoProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :current_price, :decimal
  end
end
