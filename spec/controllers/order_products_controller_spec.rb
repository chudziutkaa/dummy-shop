require 'rails_helper'

RSpec.describe OrderProductsController do
  let(:current_order) { FactoryGirl.create :order }
  before { allow(controller).to receive(:current_order) { current_order } }

  describe 'POST #create' do
  end

  describe 'PUT #update' do
  end

  describe 'DELETE #destroy' do
    let!(:order_product) { FactoryGirl.create :order_product }

    it 'destroys order_product' do
      # expect { delete :destroy, id: order_product.id }.to change(OrderProduct, :count).by(-1)
    end
  end
end
