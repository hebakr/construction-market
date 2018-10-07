class CreateSpecItems < ActiveRecord::Migration[5.2]
  def change
    create_table :spec_items do |t|
      t.string :name
      t.integer :type
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
