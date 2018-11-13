class CreateDistributers < ActiveRecord::Migration[5.2]
  def change
    create_table :distributers do |t|
      t.string :name
      t.string :phone
      t.string :website
      t.string :address

      t.timestamps
    end
  end
end
