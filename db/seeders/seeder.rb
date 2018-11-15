module Seeder
  # @return nil
  def self.seed_categories
    Category.delete_all

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
  end

  def self.seed_spec_items
    SpecItem.delete_all
    Category.all.each do |cat|
      (1..5).each do |_i|
        brand = cat.brands.new

        brand.name = Faker::Commerce.product_name


        brand.save!
      end
    end


  end

  def self.seed_offers
    Product.all.each do |p|
      p.offers.delete_all
      (1..3).each do |_i|
        offset = rand(Company.count)
        rand_company = Company.offset(offset).first
        offer = Offer.new
        offer.company = rand_company
        offer.product = p
        offer.title = Faker::Lorem.sentence(5)
        offer.description = Faker::Lorem.sentence(15)
        p.offers << offer if rand_company.present?

        p.save!
      end
    end
  end


  def self.seed_prices
    Price.delete_all
    Product.all.each do |p|
      (1..4).each do |_i|
        p.prices.create(price: Faker::Commerce.price)
      end
    end
  end

  def self.seed_photos
    Photo.delete_all
    Product.all.each do |p|
      (1..4).each do |_i|
        p.photos.create(file: "http://loremflickr.com/400/400?random=#{_i}")
        p.prices.create(price: Faker::Commerce.price)
      end
    end
  end

  def self.seed_providers
    Product.all.each do |p|
      p.companies.delete_all
      (1..4).each do |_i|
        offset = rand(Company.count)
        rand_company = Company.offset(offset).first
        p.companies << rand_company if rand_company.present?

        p.save!
      end
    end
  end

  def self.seed_spec_values
    SpecValue.delete_all
    SpecValue.delete_all

    Category.all.each do |category|
      (1..5).each do |_i|
        category.spec_items.create(name: Faker::Lorem.word)
      end
        puts category.name
        category.brands.each do |brand|
          puts "--Brand: #{brand.name}"

          brand.products.each do |p|
            puts "-----Product: #{p.name}"
            category.spec_items.each do |item|
              puts "------Spec Item: #{item.name}"
              SpecValue.create(value: Faker::Number.rand(100), product_id: p.id, spec_item_id: item.id)
            end
          end
        end
    end
  end

  def self.seed_products
    Brand.all.each do |brand|
      (1..5).each do |_j|
        brand.products.create(name: Faker::Commerce.product_name, discription: Faker::Lorem.sentence)
      end
    end
   end

  def self.seed_companies
    (1..10).each do |_i|
      Company.create(
        name: Faker::Company.name,
        address: Faker::Address.full_address,
        website: Faker::Internet.url,
        telephone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email
      )
    end
  end

  def self.seed_brands
    Category.all.each do |cat|
      (1..5).each do |_i|
        brand = cat.brands.new

        brand.name = Faker::Commerce.product_name


        brand.save!
      end
    end
  end

  def self.seed_all
    Seeder.seed_categories
    Seeder.seed_brands

    Seeder.seed_products
    Seeder.seed_companies

    Seeder.seed_spec_values
    Seeder.seed_photos

    Seeder.seed_providers

    Seeder.seed_prices

    Seeder.seed_offers
  end
end
