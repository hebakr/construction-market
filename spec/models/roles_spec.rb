
RSpec.describe Product, :type => :model do

  it 'validate presence of name' do
    role = Product.new
    role.name = 'Admin'
    role.save
    expect(role).to be_valid
  end
end