require 'rails_helper'

RSpec.describe CommentsController, type: :request do
  let!(:product) { FactoryGirl.create :product}

  describe 'POST #create' do
    context 'when valid attributes' do
      it 'creates comment' do
        # subject { post "/products/#{product.id}/comments", comment: FactoryGirl.attributes_for(:comment), product_id: product.id ,format: :js }
        # expect{ subject }.to change{ Comment.count }.by(1) 
      end
    end

    context 'when invalid attrubutes' do
      it 'does not create comment' do
        subject { post "/products/#{product.id}/comments", comment: FactoryGirl.attributes_for(:comment, content: nil) }
        expect(Comment.count).to eq(0)
      end
    end
  end
end
