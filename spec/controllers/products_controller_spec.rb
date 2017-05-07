require 'rails_helper'

RSpec.describe ProductsController do
  describe 'GET #index' do
    let!(:product) { FactoryGirl.create :product }
    subject { get :index }
    it { is_expected.to render_template :index }
    it { is_expected.to have_http_status(200) }
  end

  describe 'GET #show' do
    context 'when product is found' do
      let(:current_order) { FactoryGirl.create :order }
      before { allow(controller).to receive(:current_order) { current_order } }

      let!(:product) { FactoryGirl.create :product }
      subject { get :show, id: product.id }
      it { is_expected.to render_template :show }
      it { is_expected.to have_http_status(200) }

      let!(:order_product) { FactoryGirl.build :order_product }

      it 'initializes new order_product' do
        subject { get :new }
        expect(assigns(:order_product)).to be_a(OrderProduct)
      end

      let!(:comment) { FactoryGirl.build :comment }
      it 'initializes new comment' do
        subject { get :new }
        expect(assigns(:comment)).to be_a(Comment)
      end
    end
  end
end
