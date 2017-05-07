require 'rails_helper'

RSpec.describe Product do
  it 'has valid factory' do
    expect(FactoryGirl.create(:product)).to be_valid
  end

  it 'is invalid without name' do
    expect(FactoryGirl.build(:product, name: nil)).to be_invalid
  end

  it 'is invalid without price' do
    expect(FactoryGirl.build(:product, price: nil)).to be_invalid
  end

  # it 'is invalid with too long description' do
  #   expect(FactoryGirl.build(:product, ))
  # end
end
