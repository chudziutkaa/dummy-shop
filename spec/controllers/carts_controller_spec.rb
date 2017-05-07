require 'rails_helper'

RSpec.describe CartsController do
  describe 'GET #index' do
    let(:current_order) { FactoryGirl.create :order }
    before { allow(controller).to receive(:current_order) { current_order } }
    let(:order_product) { FactoryGirl.create :order_product }
    subject { get :index }
    it { is_expected.to render_template :index }
    it { is_expected.to have_http_status(200) }
  end
end
