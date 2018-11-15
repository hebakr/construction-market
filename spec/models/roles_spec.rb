require 'rails_helper'

RSpec.describe Role, :type => :model do

  it 'validate presence of name' do
    role = Role.new
    role.name = ''
    role.save
    expect(role).to be_invalid
  end
end