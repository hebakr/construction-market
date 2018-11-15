class AdjustOffer < ActiveRecord::Migration[5.2]
  def change
    drop_table :distributers
    remove_column :offers, :distributer_id
    add_reference :offers, :company, index: true
  end
end
