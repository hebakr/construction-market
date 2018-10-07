class CreateSpecValues < ActiveRecord::Migration[5.2]
  def change
    create_table :spec_values do |t|
      t.references :product, foreign_key: true
      t.references :spec_item, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
