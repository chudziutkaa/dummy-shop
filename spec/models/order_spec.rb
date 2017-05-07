require 'rails_helper'

RSpec.describe Order do
  it 'has valid factory' do
    expect(FactoryGirl.create(:order)).to be_valid
  end

  it 'sets default order status: cart' do
    order = FactoryGirl.create(:order)
    expect(order.order_status).to eq('cart')
  end

  it 'returns total price' do
    order = FactoryGirl.create(:order)
    expect(order.total_price).to eq(order.order_products.collect(&:price).sum)
  end
end
