# # frozen_string_literal: true
#
# Category.delete_all
#
# Category.create(name: 'Covering Skin', view_order: 1)
# Category.create(name: 'Accessories', view_order: 2)
# Category.create(name: 'Sanitary Ware', view_order: 3)
# Category.create(name: 'Construction', view_order: 4)
# Category.create(name: 'Electricity', view_order: 5)
# Category.create(name: 'Air Conditioner', view_order: 6)
# Category.create(name: 'Marbels and Rocks', view_order: 7)
# Category.create(name: 'Metal Manufacturing', view_order: 8)
# Category.create(name: 'Ceramic', view_order: 9)
# Category.create(name: 'Wooden Item', view_order: 10)
# Category.create(name: 'Doors & Windows', view_order: 11)
# Category.create(name: 'Glass', view_order: 12)
#
# Category.all.each do |cat|
#   (1..10).each do |_i|
#     brand = cat.brands.new
#
#     brand.name = Faker::Commerce.product_name
#     # brand.products = []
#     # (1..10).each do |_j|
#     #   brand.products << { name: Faker::Commerce.product_name, discription: Faker::Lorem.sentence }
#     # end
#
#     brand.save!
#   end
# end
#
# Brand.all.each do |brand|
#   (1..10).each do |_j|
#     brand.products.create(name: Faker::Commerce.product_name, discription: Faker::Lorem.sentence)
#   end
# end
#
# (1..10).each do |_i|
#   Company.create(
#     name: Faker::Company.name,
#     address: Faker::Address.full_address,
#     website: Faker::Internet.url,
#     telephone: Faker::PhoneNumber.phone_number,
#     email: Faker::Internet.email
#   )
# end
#
Product.includes(:brand).all.each do |product|
  spec_items = SpecItem.find_by_category_id(product.brand.category_id)
  next if spec_items.present? do
    spec_items.each do |item|
      product.spec_values.create(spec_item_id: item.id, value: Faker::Number.rand(100))
    end
  end
end
