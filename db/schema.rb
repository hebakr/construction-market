# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_28_142350) do

  create_table 'attachements', force: :cascade do |t|
    t.string 'file'
    t.string 'discription'
    t.integer 'product_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['product_id'], name: 'index_attachements_on_product_id'
  end

  create_table 'brands', force: :cascade do |t|
    t.string 'name'
    t.integer 'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.integer 'view_order'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'photo'
    t.integer 'parent_id'
  end

  create_table 'companies', force: :cascade do |t|
    t.string 'name'
    t.string 'address'
    t.string 'telephone'
    t.string 'website'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email'
  end

  create_table 'companies_products', id: false, force: :cascade do |t|
    t.integer 'company_id', null: false
    t.integer 'product_id', null: false
    t.index ['company_id'], name: 'index_companies_products_on_company_id'
    t.index ['product_id'], name: 'index_companies_products_on_product_id'
  end

  create_table 'photos', force: :cascade do |t|
    t.string 'file'
    t.string 'discription'
    t.integer 'product_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['product_id'], name: 'index_photos_on_product_id'
  end

  create_table 'prices', force: :cascade do |t|
    t.decimal 'price'
    t.integer 'product_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['product_id'], name: 'index_prices_on_product_id'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.string 'discription'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'brand_id'
  end

  create_table 'spec_items', force: :cascade do |t|
    t.string 'name'
    t.integer 'item_type_cd'
    t.integer 'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.text 'options'
    t.index ['category_id'], name: 'index_spec_items_on_category_id'
  end

  create_table 'spec_values', force: :cascade do |t|
    t.integer 'product_id'
    t.integer 'spec_item_id'
    t.string 'value'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['product_id'], name: 'index_spec_values_on_product_id'
    t.index ['spec_item_id'], name: 'index_spec_values_on_spec_item_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
