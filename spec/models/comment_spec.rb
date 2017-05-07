require 'rails_helper'

RSpec.describe Comment do
  it 'has valid factory' do
    expect(FactoryGirl.create :comment).to be_valid
  end

  it 'is invalid without product' do
    expect(FactoryGirl.build :comment, product_id: nil).to be_invalid
  end

  it 'is invalid without content' do
    expect(FactoryGirl.build :comment, content: nil).to be_invalid
  end
end