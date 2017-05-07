require 'rails_helper'

RSpec.describe OrderProduct do
  it 'has valid factory' do
    expect(FactoryGirl.create(:order_product)).to be_valid
  end

  it 'is invalid when quantity equals or is lower than 0' do
    expect(FactoryGirl.build(:order_product, quantity: -1)).to be_invalid
    expect(FactoryGirl.build(:order_product, quantity: 0)).to be_invalid
  end

  it 'returns price' do
    order_product = FactoryGirl.create(:order_product)
    expect(order_product.price).to eq(order_product.product.price * order_product.quantity)
  end
end
