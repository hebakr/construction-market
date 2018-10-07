Category.create(name: 'Covering Skin', view_order: 1)
Category.create(name: 'Accessories', view_order: 2)
Category.create(name: 'Sanitary Ware', view_order: 3)
Category.create(name: 'Construction', view_order: 4)
Category.create(name: 'Electricity', view_order: 5)
Category.create(name: 'Air Conditioner', view_order: 6)
Category.create(name: 'Marbels and Rocks', view_order: 7)
Category.create(name: 'Metal Manufacturing', view_order: 8)
Category.create(name: 'Ceramic', view_order: 9)
Category.create(name: 'Wooden Item', view_order: 10)
Category.create(name: 'Doors & Windows', view_order: 11)
Category.create(name: 'Glass', view_order: 12)

Category.all.each do |cat|
  for i in 1..10
    cat.products.create(name: Faker::Commerce.product_name,
                        discription: Faker::Lorem.sentence
                        )
  end
end
for i in 1..10
  Company.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    website: Faker::Internet.url,
    telephone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
  )
end
