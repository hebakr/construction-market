class CreateCompaniesProductsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :companies, :products do |t|
      t.index :company_id
      t.index :product_id
    end
  end
end
