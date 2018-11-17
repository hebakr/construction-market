class CreateQuotationItems < ActiveRecord::Migration[5.2]
  def change
    create_table :quotation_items do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity, default: 1
      t.string :notes

      t.timestamps
    end
  end
end
