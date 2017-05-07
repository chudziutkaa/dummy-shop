require 'rails_helper'
require 'support/spec_test_helper'

RSpec.describe OrdersController do
  describe 'GET #show' do
    context 'when order is found' do
      let!(:order) { FactoryGirl.create :order }
      subject { get :show, id: order.id }
      it { is_expected.to render_template :show }
      it { is_expected.to have_http_status(200) }
    end
  end

  describe 'PUT #complete' do
    context 'when order is found' do
      let!(:order) { FactoryGirl.create :order }
      let!(:user) { FactoryGirl.create :user, order_id: order.id }
      let(:order_status) { 'completed' }
      let!(:params) do
        { id: order.id, order: { order_status: order_status, user: user } }
      end
      subject { put :complete, params }

      it "sets order_status to 'comleted'" do
        expect{ subject }.to change{ order.reload.order_status }.to(order_status)
      end

      it 'assigns user to order' do
        expect(order.user).to eq(user)
      end

      it { is_expected.to have_http_status(302) }

      it { is_expected.to redirect_to(completed_order_path(assigns(:order))) }
    end
  end

  describe 'GET #start_new_session' do
    before do
      current_order
    end

    it 'sets session to nil' do
      # session[current_order.id] = nil
      # expect(session[current_order.id]).to eq(nil)
    end

    # it { is_expected.to redirect_to(root_path) }
  end
end
