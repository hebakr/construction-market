class CreateAttachements < ActiveRecord::Migration[5.2]
  def change
    create_table :attachements do |t|
      t.string :file
      t.string :discription
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
