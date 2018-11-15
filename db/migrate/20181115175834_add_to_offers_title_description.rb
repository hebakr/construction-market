class AddToOffersTitleDescription < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :title, :string
    add_column :offers, :description, :string
  end
end
